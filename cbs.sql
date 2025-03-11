-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2025 at 01:51 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(25, 'Can add user profile', 7, 'add_userprofile'),
(26, 'Can change user profile', 7, 'change_userprofile'),
(27, 'Can delete user profile', 7, 'delete_userprofile'),
(28, 'Can view user profile', 7, 'view_userprofile'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add cab', 9, 'add_cab'),
(34, 'Can change cab', 9, 'change_cab'),
(35, 'Can delete cab', 9, 'delete_cab'),
(36, 'Can view cab', 9, 'view_cab'),
(37, 'Can add booking', 10, 'add_booking'),
(38, 'Can change booking', 10, 'change_booking'),
(39, 'Can delete booking', 10, 'delete_booking'),
(40, 'Can view booking', 10, 'view_booking');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$wqqmanfh4rivHU4ODLdJTi$lzXTIapA5EoQ+VGpIimNIRSvOWIPB747Iuzn15A3oKc=', '2025-03-08 12:09:35.520268', 1, 'admin', 'hello', 'hy', 'admin123@gmail.com', 1, 1, '2025-02-07 10:19:42.923531'),
(9, 'pbkdf2_sha256$870000$4DSzQfm6GmLIf1P2Aik2S0$XioZFF5PGw84dWJwPkAqdr1VDk/PQHQU8FZjTSrsBns=', '2025-03-07 15:20:52.101877', 0, 'Kayum47', 'Kayum', 'Parmar', 'kayumparmar10@gmail.com', 0, 1, '2025-02-08 08:16:39.777802'),
(12, 'pbkdf2_sha256$870000$wdH6bTKnkyob9FzZFg9ZmM$3PN0gIDdgovWee7aE8se3SG2+vwOCSY10UujikfmdJE=', '2025-03-06 12:37:40.930376', 0, 'dhamo1', 'dhamo', 'Vadher', 'dhamo@gmail.com', 0, 1, '2025-02-18 09:20:43.119755'),
(13, 'pbkdf2_sha256$870000$zZ8EuI0b8AhchQGUNsOup4$qGgYktjhTxjcGbgUUCTkuZUN6UC3f8xAD2STYRON/Uw=', '2025-03-02 06:45:29.728783', 1, 'hy', '', '', '', 1, 1, '2025-02-18 09:24:11.657595'),
(15, 'pbkdf2_sha256$870000$Cfb9RiEYUbOGWGPCTMWb9i$0mD5q/1A0N4b4sUPrD1vviLi4kr1ZRcvZl15t2utkQk=', '2025-03-07 15:51:16.402776', 0, 'cab47', 'Kayum Parmar ', '', '', 1, 1, '2025-02-26 06:14:55.286213'),
(16, 'pbkdf2_sha256$870000$t2huBMJDhXWXpZJKBXiFxU$kei6KOQQr9ZrqokpOsavCRmHU4STlnR03xH3myIyadw=', '2025-03-04 17:33:14.407045', 0, 'gw123', 'George Williams', '', '', 1, 1, '2025-02-26 10:32:23.767144'),
(20, 'pbkdf2_sha256$870000$oNreqKDjqeku1ghPbZZcL5$9T2b1Amm1YID/PY9iYQOzff46aCbbh7sxvdQeABCgQk=', NULL, 0, 'john123', 'John J. Ackles', '', '', 1, 1, '2025-02-26 11:26:18.159234'),
(23, 'pbkdf2_sha256$870000$wACqFxKE0k4utery6fjfXG$g852rsmVWbcxzs9oXzs2Cu94lm3hl8YNERQI/DvnqeY=', NULL, 0, 'vd123', 'Vraj', 'Dobariya', 'vg123@gmail.com', 0, 1, '2025-03-01 14:52:56.548588'),
(24, 'pbkdf2_sha256$870000$PsdQzoaRiUE6De1HwLCsOm$iuF9MU1omhhu02egn1rPdfdwVrCp8BMVIe7EtSLFXCY=', NULL, 0, 'fnn', 'fgn', '', '', 1, 1, '2025-03-02 06:33:20.025589'),
(27, 'pbkdf2_sha256$870000$G5xj4ZogWPfR7iYY40KF1q$AZ8imuSjs6Sb7W1WTXjWUx6octqKGK1CXEtP0A7ku0g=', '2025-03-07 04:34:42.985373', 0, 'twb123', 'Tony W. Bryan', '', '', 1, 1, '2025-03-03 01:05:36.913103'),
(28, 'pbkdf2_sha256$870000$n2as1BWRVQqzMSkQxMRisS$GCb4PB4XaYi8gSJ0iSFFT+ETxn6L4LLj/Xy9XQ+yILM=', '2025-03-07 02:58:25.287607', 0, 'vatsal123', 'Vatsal', 'Gajera', 'vatsal123@gmail.com', 0, 1, '2025-03-07 02:55:35.111398'),
(29, 'pbkdf2_sha256$870000$CX5JvWD5qO2288CQ5DjtNy$vbLeamv67xj8DBl0y9Jx7gKnHGOjeV50EXJURsGi0mQ=', '2025-03-08 03:44:45.320148', 0, 'allen123', 'Allen S. Nichols', '', '', 1, 1, '2025-03-07 04:03:00.803137'),
(30, 'pbkdf2_sha256$870000$txGcr2gZ022VmA5bKgLM7o$yVJvMA0Y5Qt7IMOHsg9XJMLNTwAowxLCYs6bZIAKidg=', '2025-03-08 03:41:48.873137', 0, 'abcd123', 'AB', 'CD', 'abcd@gmail.com', 0, 1, '2025-03-08 03:41:26.104371');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'mainsite', 'booking'),
(9, 'mainsite', 'cab'),
(8, 'mainsite', 'category'),
(7, 'mainsite', 'userprofile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-07 10:18:54.344194'),
(2, 'auth', '0001_initial', '2025-02-07 10:18:55.285019'),
(3, 'admin', '0001_initial', '2025-02-07 10:18:55.548091'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-07 10:18:55.565971'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-07 10:18:55.610075'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-07 10:18:55.853026'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-07 10:18:55.999933'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-07 10:18:56.071204'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-07 10:18:56.097269'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-07 10:18:56.251061'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-07 10:18:56.260905'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-07 10:18:56.274766'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-07 10:18:56.434194'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-07 10:18:56.592538'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-07 10:18:56.636050'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-07 10:18:56.650948'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-07 10:18:56.936780'),
(18, 'sessions', '0001_initial', '2025-02-07 10:18:57.021272'),
(19, 'mainsite', '0001_initial', '2025-02-07 10:55:08.484972'),
(20, 'mainsite', '0002_alter_userprofile_image_path', '2025-02-08 05:12:22.638800'),
(21, 'mainsite', '0003_alter_userprofile_image_path', '2025-02-08 06:44:19.125412'),
(22, 'mainsite', '0004_category', '2025-02-20 11:14:50.190090'),
(23, 'mainsite', '0005_remove_category_created_at_and_more', '2025-02-26 06:00:01.149783'),
(24, 'mainsite', '0006_category_description_category_status', '2025-02-26 06:00:01.240258'),
(25, 'mainsite', '0007_booking', '2025-03-03 09:13:58.180069'),
(26, 'mainsite', '0008_alter_booking_ref_code', '2025-03-03 10:30:33.443381'),
(27, 'mainsite', '0009_alter_booking_status', '2025-03-06 11:13:01.914548');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0zaqxenyqbtxdc95owf4e61gyl2anwq0', '.eJxVjEEOwiAQRe_C2hDoTGlx6b5nIMAwUjWQlHZlvLsh6UK3_73338L5Y8_uaGlzK4mrsOLyuwUfn6l0QA9f7lXGWvZtDbIr8qRNLpXS63a6fwfZt9xrHEJiMDDNI4NlHAzqyShNnjkSGLKEBj0ongNoTmgRtY0jICmTgvh8AeDPN7U:1tjxwc:nSS5QRosizTRCSn1kxJkMXl2Bhl6qmSyZX5FTtOdMI4', '2025-03-03 10:01:42.679357'),
('1jo9ai80yitdh5d0sa9jjys4y1nboonm', 'e30:1tgNlk:I8ch1F0zVosIgWdlZ60lJS5lcbmkT2CY0aVnm499Ls0', '2025-02-21 12:47:40.111281'),
('hsx311uiyl580kkl4yxvlxw1i3w9p2nc', 'e30:1tgNjk:aasOYBbqyP0YBgC2GT4k-LaOKSxegHFO-WkVYnT0pPY', '2025-02-21 12:45:36.263732'),
('iwzjjfbohefyluu0lrmqmuhu0t34ksja', '.eJxVjDsOwyAQBe9CHSEMLIaU6X0GtMsnOImwZOwqyt2DJRdJ-2bmvZnHfSt-b2n1c2RXBuzyuxGGZ6oHiA-s94WHpW7rTPxQ-Ekbn5aYXrfT_Tso2EqvcRRGyYjKJY1AkKV0zinQSSgFORtCOyqrjUmDk4MJPSANYIUD6hr7fAHEGTaS:1tgPL5:uvluEEBuoo5CBTvZpKC3_HuG_tfCZOTfg1KZF1BU65I', '2025-02-21 14:28:15.844037'),
('our6hegkuf37prtxs51r53sx6gz9n99f', '.eJxVjEEOwiAQRe_C2pBCYACX7j0DGYZBqgaS0q6Md9cmXej2v_f-S0Tc1hq3wUucszgLZcXpd0xID247yXdsty6pt3WZk9wVedAhrz3z83K4fwcVR_3WidgpoBw0OAhskmMP2ikMFDIV6xUHBxOxKqitATNh8R5KUYaLDSTeHxMcOGI:1tnBMY:B1CYqrAd7iWftyf0Ee3s8ypOD6S5I6hcAtulOgqdR-0', '2025-03-12 06:57:46.869248'),
('sm42cm1hfmvmwn0v8aaz0mbr1usm0l60', 'e30:1tgOt5:bhyMnOxHkujyhy2AU9h7FrmP5GY4y1BZJbcseD1aGq0', '2025-02-21 13:59:19.904778'),
('vjfxwqzzwoq9oggjvvz49j4v3u4gh6by', 'e30:1tgOuF:8qvZQzrTv-k_iFTfI_9x4R4BWnOGjymVtxvctPz6bOE', '2025-02-21 14:00:31.329745'),
('vll5zvcif4cuv0mbhrnxfrul3ad27keg', 'e30:1th2Ok:0PBcjGChZC_g85wdJggsFwQPHB158A1q56xRjgKKkJw', '2025-02-23 08:10:38.457370'),
('ycut4n2f200s14r3bn18ukmev9nvkks9', 'e30:1tgNkj:lAKtQy8Q2tp_G51g1PF-1eoXrJrnIwLqk4DOwz1ponc', '2025-02-21 12:46:37.229695');

-- --------------------------------------------------------

--
-- Table structure for table `mainsite_booking`
--

CREATE TABLE `mainsite_booking` (
  `id` bigint NOT NULL,
  `ref_code` varchar(6) NOT NULL,
  `pickup_zone` longtext NOT NULL,
  `drop_zone` longtext NOT NULL,
  `status` int NOT NULL,
  `booking_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `cab_id` bigint NOT NULL,
  `client_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mainsite_booking`
--

INSERT INTO `mainsite_booking` (`id`, `ref_code`, `pickup_zone`, `drop_zone`, `status`, `booking_date`, `updated_date`, `cab_id`, `client_id`) VALUES
(11, '518319', 'cde', 'tgb', 3, '2025-03-03 10:32:37.476314', '2025-03-04 16:05:56.659374', 1, 8),
(12, '285480', 'bgtyhn', 'tgbyhn', 3, '2025-03-03 10:33:17.702755', '2025-03-04 17:53:06.899543', 2, 8),
(13, '317348', 'rajkot', 'kalana', 3, '2025-03-04 03:40:24.709491', '2025-03-04 17:57:36.471636', 11, 8),
(14, '413621', 'kalana ', 'rajkot', 3, '2025-03-04 17:16:39.733999', '2025-03-04 17:21:39.827620', 1, 8),
(15, '510021', 'rajkot', 'gondal\r\n', 2, '2025-03-05 04:21:01.280560', '2025-03-05 04:23:41.615719', 1, 10),
(16, '840353', 'dfdfssdf', 'sdfsdgsd', 4, '2025-03-05 04:34:21.615892', '2025-03-05 10:03:44.493886', 11, 10),
(17, '721393', 'ddhdthsrtrth', 'dfthrt ttrr ryrstrth', 4, '2025-03-05 10:17:47.630807', '2025-03-05 10:17:57.732224', 1, 8),
(18, '302592', 'xfd', 'xdx', 4, '2025-03-05 16:42:45.913808', '2025-03-05 16:42:56.058661', 11, 8),
(19, '547395', 'dfhdhdh', 'dfhdhdrhdrdh', 4, '2025-03-06 12:20:20.280413', '2025-03-06 12:20:30.659371', 6, 8),
(20, '458882', 'dgsdgD', 'SgSg', 4, '2025-03-06 12:21:21.892182', '2025-03-06 12:21:32.423676', 11, 8),
(21, '446835', 'fhdht', 'xfgxfthfth', 2, '2025-03-06 12:37:55.314575', '2025-03-07 15:51:35.178959', 1, 10),
(22, '332974', 'vavdi', 'mavdi', 3, '2025-03-07 02:56:34.386909', '2025-03-07 02:58:09.525250', 11, 15),
(23, '367307', 'hjhsdf', 'dfhhdf', 3, '2025-03-07 04:27:13.005087', '2025-03-07 04:34:52.757748', 11, 8),
(24, '192323', 'djfhysdf', 'sdfsd', 0, '2025-03-08 03:42:08.397102', '2025-03-08 03:42:08.397102', 12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `mainsite_cab`
--

CREATE TABLE `mainsite_cab` (
  `id` bigint NOT NULL,
  `cab_reg_no` varchar(255) NOT NULL,
  `cab_model` varchar(255) NOT NULL,
  `body_no` varchar(255) NOT NULL,
  `driver_contact` varchar(15) NOT NULL,
  `driver_address` longtext NOT NULL,
  `driver_image` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `category_id` bigint NOT NULL,
  `driver_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mainsite_cab`
--

INSERT INTO `mainsite_cab` (`id`, `cab_reg_no`, `cab_model`, `body_no`, `driver_contact`, `driver_address`, `driver_image`, `status`, `category_id`, `driver_id`) VALUES
(1, 'GJ03LN4913', 'Volkswagen Passat', 'Passat-7890', '9898678042', 'Society Sheri, Kalana.kalana', 'drivers/1_7yygaN1.png', 'Active', 1, 15),
(2, 'ASTR0715', 'Ford Fusion', 'Camry-440', '09456987123', '69 Nixon Avenue\r\n', 'default.png', 'Active', 3, 16),
(6, 'ASTR0020', 'Skoda Superb 162TSI', 'Skoda-162TSI', '2547854444', '49 Andell Road\r\n', 'default.png', 'Active', 4, 20),
(11, 'ASTR0555', 'Hyundai i10', 'iTen-1010', '4785478500', '59 Patterson Fork Road', 'drivers/1_xi9bzuy.png', 'Active', 1, 27),
(12, 'GJ03RR4947', 'Honda Civic', 'Civic-7781', '7895410000', '74 Frosty Lane', 'drivers/1_LMl4X1Y.png', 'Active', 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `mainsite_category`
--

CREATE TABLE `mainsite_category` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mainsite_category`
--

INSERT INTO `mainsite_category` (`id`, `name`, `description`, `status`) VALUES
(1, '5 Seater', 'iuguygguygccxgxffcf', 'Active'),
(3, '6 Seater', 'tjyjgyj', 'Active'),
(4, '7 Seater', 'vvcfzdfddzzcvbdfd', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `mainsite_userprofile`
--

CREATE TABLE `mainsite_userprofile` (
  `id` bigint NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `image_path` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mainsite_userprofile`
--

INSERT INTO `mainsite_userprofile` (`id`, `gender`, `address`, `contact`, `image_path`, `user_id`) VALUES
(8, 'Male', 'Society Sheri, Kalana.0000', '9898678043', 'avatars/photo1-removebg-preview_2.png', 9),
(9, 'Male', 'None', 'None', '', 1),
(10, 'Male', 'Society Sheri, Kalana.', '3265987412', '', 12),
(12, '', NULL, NULL, '', 15),
(14, 'Male', 'ramnagar shari no .1', '9632587410', '', 23),
(15, 'male', 'Society Sheri, Kalana.', '9876543210', '', 28),
(16, 'male', 'Society Sheri, Kalana.', '9873216540', '', 30);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `mainsite_booking`
--
ALTER TABLE `mainsite_booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_code` (`ref_code`),
  ADD KEY `mainsite_booking_cab_id_a67eab2a_fk_mainsite_cab_id` (`cab_id`),
  ADD KEY `mainsite_booking_client_id_01ce6b71_fk_mainsite_userprofile_id` (`client_id`);

--
-- Indexes for table `mainsite_cab`
--
ALTER TABLE `mainsite_cab`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cab_reg_no` (`cab_reg_no`),
  ADD UNIQUE KEY `body_no` (`body_no`),
  ADD KEY `mainsite_cab_category_id_8ed8eb34_fk_mainsite_category_id` (`category_id`),
  ADD KEY `mainsite_cab_driver_id_22c6235c_fk_auth_user_id` (`driver_id`);

--
-- Indexes for table `mainsite_category`
--
ALTER TABLE `mainsite_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `mainsite_userprofile`
--
ALTER TABLE `mainsite_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mainsite_userprofile_user_id_352a23ce_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mainsite_booking`
--
ALTER TABLE `mainsite_booking`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mainsite_cab`
--
ALTER TABLE `mainsite_cab`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mainsite_category`
--
ALTER TABLE `mainsite_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mainsite_userprofile`
--
ALTER TABLE `mainsite_userprofile`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mainsite_booking`
--
ALTER TABLE `mainsite_booking`
  ADD CONSTRAINT `mainsite_booking_cab_id_a67eab2a_fk_mainsite_cab_id` FOREIGN KEY (`cab_id`) REFERENCES `mainsite_cab` (`id`),
  ADD CONSTRAINT `mainsite_booking_client_id_01ce6b71_fk_mainsite_userprofile_id` FOREIGN KEY (`client_id`) REFERENCES `mainsite_userprofile` (`id`);

--
-- Constraints for table `mainsite_cab`
--
ALTER TABLE `mainsite_cab`
  ADD CONSTRAINT `mainsite_cab_category_id_8ed8eb34_fk_mainsite_category_id` FOREIGN KEY (`category_id`) REFERENCES `mainsite_category` (`id`),
  ADD CONSTRAINT `mainsite_cab_driver_id_22c6235c_fk_auth_user_id` FOREIGN KEY (`driver_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mainsite_userprofile`
--
ALTER TABLE `mainsite_userprofile`
  ADD CONSTRAINT `mainsite_userprofile_user_id_352a23ce_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
