-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2018 at 07:09 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mpsc2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add paper', 7, 'add_paper'),
(26, 'Can change paper', 7, 'change_paper'),
(27, 'Can delete paper', 7, 'delete_paper'),
(28, 'Can view paper', 7, 'view_paper'),
(29, 'Can add year', 8, 'add_year'),
(30, 'Can change year', 8, 'change_year'),
(31, 'Can delete year', 8, 'delete_year'),
(32, 'Can view year', 8, 'view_year'),
(33, 'Can add exam', 9, 'add_exam'),
(34, 'Can change exam', 9, 'change_exam'),
(35, 'Can delete exam', 9, 'delete_exam'),
(36, 'Can view exam', 9, 'view_exam'),
(37, 'Can add questions', 10, 'add_questions'),
(38, 'Can change questions', 10, 'change_questions'),
(39, 'Can delete questions', 10, 'delete_questions'),
(40, 'Can view questions', 10, 'view_questions'),
(41, 'Can add question', 10, 'add_question'),
(42, 'Can change question', 10, 'change_question'),
(43, 'Can delete question', 10, 'delete_question'),
(44, 'Can view question', 10, 'view_question'),
(45, 'Can add option', 11, 'add_option'),
(46, 'Can change option', 11, 'change_option'),
(47, 'Can delete option', 11, 'delete_option'),
(48, 'Can view option', 11, 'view_option');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$pJBty7pW7cBG$ebt3IwgI0+WDQ6AUc5oRnEe4M4YdhbThInhR2UIZRYA=', '2018-10-20 17:30:38.650800', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2018-10-01 18:57:23.931206'),
(2, 'pbkdf2_sha256$120000$JitQ9bKoIwXQ$R0TbAzvIsIhXnq7Z1Y/PefaWrne5xWm3aiqCcEEqRho=', '2018-10-01 19:54:35.409475', 0, 'operator', 'Amit', 'Dhele', 'amit@gmail.com', 1, 1, '2018-10-01 19:50:53.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 32),
(2, 2, 25),
(3, 2, 36),
(4, 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-10-01 19:18:01.333981', '1', 'Year object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2018-10-01 19:19:39.057571', '3', '2011', 1, '[{\"added\": {}}]', 8, 1),
(3, '2018-10-01 19:19:51.468281', '3', '2011', 3, '', 8, 1),
(4, '2018-10-01 19:37:16.540055', '2', '2011', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 8, 1),
(5, '2018-10-01 19:37:43.375590', '2', '2011', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 8, 1),
(6, '2018-10-01 19:41:23.885203', '1', 'PSI-STI-2010(PRELIM)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2018-10-01 19:46:18.993082', '1', 'PSI-STI', 1, '[{\"added\": {}}]', 9, 1),
(8, '2018-10-01 19:50:53.416778', '2', 'operator', 1, '[{\"added\": {}}]', 4, 1),
(9, '2018-10-01 19:52:34.657569', '2', 'operator', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"user_permissions\"]}}]', 4, 1),
(10, '2018-10-01 19:53:38.346212', '2', 'operator', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(11, '2018-10-01 19:53:57.079283', '2', 'operator', 2, '[]', 4, 1),
(12, '2018-10-01 19:54:30.258181', '2', 'operator', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(13, '2018-10-01 19:58:27.946776', '4', 'PSI-STI-2010(PRELIM)', 1, '[{\"added\": {}}]', 7, 2),
(14, '2018-10-03 17:15:45.678891', '1', 'राज्य', 2, '[]', 9, 1),
(15, '2018-10-03 17:15:59.354673', '1', 'राज्य', 2, '[]', 9, 1),
(16, '2018-10-03 17:24:00.452191', '1', 'राज', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1),
(17, '2018-10-03 17:35:48.423684', '1', 'राज', 2, '[{\"changed\": {\"fields\": [\"text\"]}}]', 9, 1),
(18, '2018-10-03 17:36:17.331338', '1', 'राज', 2, '[]', 9, 1),
(19, '2018-10-09 18:42:13.614714', '1', '2010', 1, '[{\"added\": {}}]', 8, 1),
(20, '2018-10-09 18:42:18.969020', '2', '2011', 1, '[{\"added\": {}}]', 8, 1),
(21, '2018-10-09 18:42:24.855357', '3', '2012', 1, '[{\"added\": {}}]', 8, 1),
(22, '2018-10-09 18:43:26.718896', '1', 'PSI-STI', 1, '[{\"added\": {}}]', 9, 1),
(23, '2018-10-09 18:45:07.445657', '1', 'राज्य-2010()', 2, '[]', 7, 1),
(24, '2018-10-09 18:45:44.883798', '2', 'राज-2010(PRELIM)', 1, '[{\"added\": {}}]', 7, 1),
(25, '2018-10-09 18:45:53.504291', '2', 'राज-2010(PRELIM)', 3, '', 7, 1),
(26, '2018-10-09 19:00:59.844131', '2', 'भाजपकडून मुख्यमंत्र्यांच्या देखरेखेखाली मतदारसंघ निहाय सर्वेक्षण करण्यात आलं. यामध्ये जर आता निवडणूक झाली तर कोणाला किती मते मिळतील?, पहिल्यापेक्षा कमी किंवा जास्त मते का मिळाली?, गेल्या 4 वर्षात कोणत', 1, '[{\"added\": {}}]', 10, 1),
(27, '2018-10-09 19:01:26.014628', '1', 'भाजपकडून मुख्यमंत्र्यांच्या देखरेखेखाली मतदारसंघ निहाय सर्वेक्षण करण्यात आलं. यामध्ये जर आता निवडणूक झाली तर कोणाला किती मते मिळतील?, पहिल्यापेक्षा कमी किंवा जास्त मते का मिळाली?, गेल्या 4 वर्षात कोणत', 3, '', 10, 1),
(28, '2018-10-09 19:01:33.396050', '2', 'भाजपकडून मुख्यमंत्र्यांच्या देखरेखेखाली मतदारसंघ निहाय सर्वेक्षण करण्यात आलं. यामध्ये जर आता निवडणूक झाली तर कोणाला किती मते मिळतील?, पहिल्यापेक्षा कमी किंवा जास्त मते का मिळाली?, गेल्या 4 वर्षात कोणत', 3, '', 10, 1),
(29, '2018-10-09 19:02:06.974971', '3', 'suhas adhav', 1, '[{\"added\": {}}]', 10, 1),
(30, '2018-10-09 19:05:52.041844', '3', 'suhas adhav', 2, '[{\"changed\": {\"fields\": [\"question_img\"]}}]', 10, 1),
(31, '2018-10-09 19:07:18.430785', '3', 'suhas adhav', 2, '[{\"changed\": {\"fields\": [\"question_img\"]}}]', 10, 1),
(32, '2018-10-09 19:08:58.248494', '3', 'suhas adhav', 2, '[{\"changed\": {\"fields\": [\"question_img\"]}}]', 10, 1),
(33, '2018-10-09 19:15:16.179110', '3', 'suhas adhav', 2, '[{\"changed\": {\"fields\": [\"question_img\"]}}]', 10, 1),
(34, '2018-10-13 14:58:05.211854', '1', 'PSI-STI', 2, '[]', 9, 1),
(35, '2018-10-13 18:07:17.873189', '1', '2010', 1, '[{\"added\": {}}]', 8, 1),
(36, '2018-10-13 18:07:24.435564', '2', '2011', 1, '[{\"added\": {}}]', 8, 1),
(37, '2018-10-13 18:12:17.644335', '1', 'PSI-STI', 1, '[{\"added\": {}}]', 9, 1),
(38, '2018-10-13 18:12:45.393922', '1', 'Paper - I-2010(PRELIM)', 1, '[{\"added\": {}}]', 7, 1),
(39, '2018-10-20 17:32:27.030999', '1', 'Paper - I-2010(PRELIM)', 2, '[]', 7, 1),
(40, '2018-10-20 18:00:54.949687', '1', 'Paper - I-2010(PRELIM)', 2, '[{\"changed\": {\"fields\": [\"total_questions\"]}}]', 7, 1),
(41, '2018-10-20 18:33:37.132917', '1', 'suhas', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (1)\"}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (2)\"}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (3)\"}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (4)\"}}]', 10, 1),
(42, '2018-10-20 18:34:17.768241', '2', 'ajhk', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (5)\"}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (6)\"}}]', 10, 1),
(43, '2018-10-20 18:38:58.886320', '2', 'ajhk', 3, '', 10, 1),
(44, '2018-10-20 18:39:26.352891', '3', 'asjk', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (7)\"}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (8)\"}}]', 10, 1),
(45, '2018-10-20 18:40:59.531221', '3', 'asjk', 3, '', 10, 1),
(46, '2018-10-20 18:41:31.691060', '1', 'Paper - I-2010(PRELIM)', 2, '[{\"changed\": {\"fields\": [\"total_questions\"]}}]', 7, 1),
(47, '2018-10-20 18:41:47.913988', '4', 'djkas', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (9)\"}}]', 10, 1),
(48, '2018-10-20 19:01:35.486913', '4', 'djkas', 2, '[{\"changed\": {\"fields\": [\"question_marathi\"]}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (10)\"}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (11)\"}}, {\"added\": {\"name\": \"option\", \"object\": \"Option object (12)\"}}]', 10, 1),
(49, '2018-10-20 19:02:13.653096', '4', 'djkas', 2, '[{\"changed\": {\"fields\": [\"question_marathi\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'questionset', 'paper'),
(8, 'questionset', 'year'),
(9, 'questionset', 'exam'),
(10, 'questionset', 'question'),
(11, 'questionset', 'option');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-10-01 18:55:49.778821'),
(2, 'auth', '0001_initial', '2018-10-01 18:55:51.770935'),
(3, 'admin', '0001_initial', '2018-10-01 18:55:52.058951'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-10-01 18:55:52.094953'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-10-01 18:55:52.151957'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-10-01 18:55:52.305965'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-10-01 18:55:52.398971'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-10-01 18:55:52.476975'),
(9, 'auth', '0004_alter_user_username_opts', '2018-10-01 18:55:52.512977'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-10-01 18:55:52.610983'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-10-01 18:55:52.617983'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-10-01 18:55:52.653985'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-10-01 18:55:52.741990'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-10-01 18:55:52.832996'),
(15, 'sessions', '0001_initial', '2018-10-01 18:55:52.957003'),
(40, 'questionset', '0007_auto_20181020_1123', '2018-10-20 18:23:55.723662'),
(39, 'questionset', '0006_auto_20181020_1105', '2018-10-20 18:05:57.152972'),
(38, 'questionset', '0005_auto_20181020_1104', '2018-10-20 18:04:32.640138'),
(37, 'questionset', '0004_question_que_num', '2018-10-20 18:04:10.602877'),
(36, 'questionset', '0003_question_paper', '2018-10-13 18:35:48.714044'),
(35, 'questionset', '0002_auto_20181013_1131', '2018-10-13 18:31:13.804320'),
(34, 'questionset', '0001_initial', '2018-10-13 18:06:33.914675');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vdr5p3frgserhznw2f1htigql8v7kj6s', 'ZTU2OTEzNzkwZDU0YzczOGM0NDE4ZjJlMGNhNDZhOGVkYjQwZTBiMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWFkOWJjNWYyMjZhMmMxYWRhNjBjOWY5ZDY0NmZhODU0ZTA2NjMzIn0=', '2018-10-15 19:54:35.411475'),
('nfnuu10479pbxpvdl9s3ayir8bt9krg3', 'YTk0MTBlYzk2OGUyYzU0OTAyNzk1OTE1MmY0MDNhZjM4ZThlY2EyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzBmNWYwZDNiNjczYTRjYjU0MjgzNGM4ZmVhOTQ3MDEwNGJkZGVmIn0=', '2018-10-15 19:53:38.354212'),
('iuucjucbd9o9ymp5tous2sp61zu623de', 'YTk0MTBlYzk2OGUyYzU0OTAyNzk1OTE1MmY0MDNhZjM4ZThlY2EyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzBmNWYwZDNiNjczYTRjYjU0MjgzNGM4ZmVhOTQ3MDEwNGJkZGVmIn0=', '2018-11-03 17:30:38.711804');

-- --------------------------------------------------------

--
-- Table structure for table `questionset_exam`
--

DROP TABLE IF EXISTS `questionset_exam`;
CREATE TABLE IF NOT EXISTS `questionset_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `year_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `questionset_exam_year_id_789c4066` (`year_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionset_exam`
--

INSERT INTO `questionset_exam` (`id`, `name`, `type`, `active`, `year_id`) VALUES
(1, 'PSI-STI', 'PRELIM', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questionset_option`
--

DROP TABLE IF EXISTS `questionset_option`;
CREATE TABLE IF NOT EXISTS `questionset_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt_marathi` longtext COLLATE utf8mb4_unicode_ci,
  `opt_english` longtext COLLATE utf8mb4_unicode_ci,
  `opt_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questionset_option_question_id_4dfb066d` (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionset_option`
--

INSERT INTO `questionset_option` (`id`, `opt_marathi`, `opt_english`, `opt_image`, `active`, `question_id`) VALUES
(1, 'Suhas', 'suhas', '', 1, 1),
(2, 'suhas', 'suhas', '', 1, 1),
(3, 'suhas', 'suhas', '', 1, 1),
(4, 'suhas', 'aas', '', 1, 1),
(5, 'sjk', 'sjkas', '', 1, NULL),
(6, 'ajkkajs', 'asjkksak', '', 1, NULL),
(7, 'sj', 'jas', '', 1, NULL),
(8, 'asnm', 'asnma', '', 1, NULL),
(9, 'saj', 'hjas', '', 1, 4),
(10, 'as', 'as', '', 1, 4),
(11, 'ashj', 'ashj', '', 1, 4),
(12, 'asdh', 'ashj', '', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `questionset_paper`
--

DROP TABLE IF EXISTS `questionset_paper`;
CREATE TABLE IF NOT EXISTS `questionset_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languauge` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_questions` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `questionset_paper_name_exam_id_9b1ac957_uniq` (`name`,`exam_id`),
  KEY `questionset_paper_exam_id_c80625bf` (`exam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionset_paper`
--

INSERT INTO `questionset_paper` (`id`, `name`, `languauge`, `total_questions`, `active`, `exam_id`) VALUES
(1, 'Paper - I', 'MARATHI,ENGLISH', 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questionset_question`
--

DROP TABLE IF EXISTS `questionset_question`;
CREATE TABLE IF NOT EXISTS `questionset_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_marathi` longtext COLLATE utf8mb4_unicode_ci,
  `question_english` longtext COLLATE utf8mb4_unicode_ci,
  `question_img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `paper_id` int(11) DEFAULT NULL,
  `que_num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `questionset_question_que_num_paper_id_fff4f74b_uniq` (`que_num`,`paper_id`),
  KEY `questionset_question_paper_id_8f49f89a` (`paper_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionset_question`
--

INSERT INTO `questionset_question` (`id`, `question_marathi`, `question_english`, `question_img`, `tags`, `active`, `paper_id`, `que_num`) VALUES
(1, 'Suhas', 'suhas', '', 'MARATHI', 1, 1, 1),
(4, 'पोस्टर्सच्या माध्यमातून शिवसेनेनं मनसेवर हल्ला चढवला आहे. शिवसेनेनं मनसेनं केलेल्या टोल आंदोलन, विद्यार्थ्यांना फसवलेलं आंदोलनं, पाकिस्तानी कलाकारांविरोधातील आंदोलन यावर टीका करत थेट राज ठाकरेंनी घेतलेल्या भूमिकांवर हल्लाबोल केला. तर \'राहत्या वॉर्डात निवडून यायचे वांदे आणि जगाला सल्ले द्यायचे यांचे धंदे\' असा टोलाही शिवसेनेनं मनसेला लगावला.\r\n\r\n- सेंटींगवाले टोल आंदोलन\r\n- विद्यार्थ्यांना फसवलेले रेल्वे आंदोलन\r\n- पाक कलाकार विरोधाच्या नावे खुले आम सेटिंग\r\n- राहत्या वॉर्डात निवडून यायचे वांदे आणि जगाला सल्ले द्यायचे यांचे धंदे', 'djkas', '', 'MARATHI', 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `questionset_year`
--

DROP TABLE IF EXISTS `questionset_year`;
CREATE TABLE IF NOT EXISTS `questionset_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `year` (`year`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionset_year`
--

INSERT INTO `questionset_year` (`id`, `year`, `active`) VALUES
(1, 2010, 1),
(2, 2011, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
