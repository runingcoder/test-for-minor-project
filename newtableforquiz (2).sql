-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 09:02 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newtableforquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add quiz', 1, 'add_quiz'),
(2, 'Can change quiz', 1, 'change_quiz'),
(3, 'Can delete quiz', 1, 'delete_quiz'),
(4, 'Can view quiz', 1, 'view_quiz'),
(5, 'Can add question', 2, 'add_question'),
(6, 'Can change question', 2, 'change_question'),
(7, 'Can delete question', 2, 'delete_question'),
(8, 'Can view question', 2, 'view_question'),
(9, 'Can add answer', 3, 'add_answer'),
(10, 'Can change answer', 3, 'change_answer'),
(11, 'Can delete answer', 3, 'delete_answer'),
(12, 'Can view answer', 3, 'view_answer'),
(13, 'Can add result', 4, 'add_result'),
(14, 'Can change result', 4, 'change_result'),
(15, 'Can delete result', 4, 'delete_result'),
(16, 'Can view result', 4, 'view_result'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$VJqWxKlC1yOUvZGcudbeC4$/1cL3X6lkrhs3BVYkQ4crVRL8pAW5odwK0GloKY461o=', '2021-09-02 08:28:27.812848', 1, 'admin999', '', '', '', 1, 1, '2021-09-02 08:28:13.824688'),
(2, 'pbkdf2_sha256$260000$bRZdMoHL9bIYCdd9Zg8Lru$7JPw9XALzX25djXHMrDPg8YddLMDDoyPeOel5YX0iB8=', '2021-11-09 11:56:45.168309', 1, 'kakeru98', '', '', '', 1, 1, '2021-10-23 12:17:46.617577');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-02 08:32:31.178192', '1', 'general knowledge-Django', 2, '[]', 1, 1),
(2, '2021-09-02 08:35:56.706527', '1', 'What is the best backend?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What is the best backend?, answer: django, correct: True\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What is the best backend?, answer: Flask, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What is the best backend?, answer: Laravel, correct: False\"}}]', 2, 1),
(3, '2021-09-02 08:37:18.855341', '2', 'What does auth stand for?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What does auth stand for?, answer: Authorization, correct: True\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What does auth stand for?, answer: Authentication, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What does auth stand for?, answer: Authflamification, correct: False\"}}]', 2, 1),
(4, '2021-09-02 08:37:42.476100', '2', 'Basic-Test', 1, '[{\"added\": {}}]', 1, 1),
(5, '2021-09-02 08:38:08.637258', '2', 'Basic-Test', 2, '[]', 1, 1),
(6, '2021-09-02 08:38:53.777615', '3', 'What is the way to add css and js in the html?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What is the way to add css and js in the html?, answer: You master it first, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What is the way to add css and js in the html?, answer: Just google, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What is the way to add css and js in the html?, answer: Don\'t do it!, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: What is the way to add css and js in the html?, answer: Just do it!, correct: True\"}}]', 2, 1),
(7, '2021-09-02 08:39:50.357377', '4', 'How are you?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: How are you?, answer: Epic, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: How are you?, answer: Correct, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: How are you?, answer: Politically correct, correct: True\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: How are you?, answer: I became so numb!, correct: False\"}}]', 2, 1),
(8, '2021-09-04 09:47:28.178328', '2', 'Basic-Test', 2, '[{\"changed\": {\"fields\": [\"Difficulty\"]}}]', 1, 1),
(9, '2021-11-10 05:06:20.027556', '4', 'New revolution-HUman Extinction', 1, '[{\"added\": {}}]', 1, 2),
(10, '2021-11-10 05:06:26.521339', '4', 'New revolution-HUman Extinction', 2, '[{\"changed\": {\"fields\": [\"Difficulty\"]}}]', 1, 2),
(11, '2021-11-10 05:07:22.641212', '475', 'When did humans start to exist?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: When did humans start to exist?, answer: 300,000 years ago, correct: True\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: When did humans start to exist?, answer: 400,000 years ago, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: When did humans start to exist?, answer: 500,000 years ago, correct: False\"}}]', 2, 2),
(12, '2021-11-10 05:08:57.848809', '476', 'When will humans become extinct?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: When will humans become extinct?, answer: 300,000 years later, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: When will humans become extinct?, answer: 400,000 years later, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: When will humans become extinct?, answer: 500,000 years later, correct: False\"}}, {\"added\": {\"name\": \"answer\", \"object\": \"question: When will humans become extinct?, answer: dunno, correct: True\"}}]', 2, 2),
(13, '2021-11-10 05:10:28.233224', '474', 'What type of join is needed when you wish to return rows that have matching values?', 3, '', 2, 2),
(14, '2021-11-10 05:10:28.235230', '440', 'What is the Commit command is used for?', 3, '', 2, 2),
(15, '2021-11-10 05:10:28.239228', '437', 'What is called if a value shouldn\'t be greater than 100?', 3, '', 2, 2),
(16, '2021-11-10 05:10:28.243228', '418', 'MySQL comes with a standard client libraries for:', 3, '', 2, 2),
(17, '2021-11-10 05:10:28.245227', '415', 'Which declaration doesn\'t use the same number of bytes and consumption of bytes depending on the input data?', 3, '', 2, 2),
(18, '2021-11-10 05:10:28.247228', '390', 'MySQL supports different Character Sets, which command is used to display all of them?', 3, '', 2, 2),
(19, '2021-11-10 05:10:28.250227', '387', 'Which function returns reference to Array of row values?', 3, '', 2, 2),
(20, '2021-11-10 05:10:28.252229', '385', 'To use \'mysqldbcopy\' which privileges are required on the source server?', 3, '', 2, 2),
(21, '2021-11-10 05:10:28.256296', '360', 'The query SELECT * FROM `movies` INSERT INTO `movies_archive`  will be executed without any errors.', 3, '', 2, 2),
(22, '2021-11-10 05:10:28.259230', '356', 'The WHERE clause is mandatory when using the SELECT command', 3, '', 2, 2),
(23, '2021-11-10 05:10:28.261232', '338', 'What is the maximum size of a row in a MyISAM table?', 3, '', 2, 2),
(24, '2021-11-10 05:10:28.264228', '252', 'Which of the following is the best way to modify a table to allow null values?', 3, '', 2, 2),
(25, '2021-11-10 05:10:28.266229', '248', 'Which of the following will raise MySQL\'s version of an error?', 3, '', 2, 2),
(26, '2021-11-10 05:10:28.269227', '244', 'What is the default DATE field type format?', 3, '', 2, 2),
(27, '2021-11-10 05:10:28.274231', '232', 'Which of the following statements are true about SQL injection attacks?', 3, '', 2, 2),
(28, '2021-11-10 05:10:28.277227', '212', 'Which operator is not included in the data manipulation language (DML)?', 3, '', 2, 2),
(29, '2021-11-10 05:10:28.279227', '211', 'You have to sort records in the descending order by field \"rating\". Which query will be correct?', 3, '', 2, 2),
(30, '2021-11-10 05:10:28.282226', '210', 'DML is included into SQL language of:', 3, '', 2, 2),
(31, '2021-11-10 05:10:28.284227', '206', 'SQL (Structured Query Language) is:', 3, '', 2, 2),
(32, '2021-11-10 05:10:28.286232', '5', 'Which operator is included in the data manipulation language (DML)?', 3, '', 2, 2),
(33, '2021-11-10 05:54:10.887392', '5', 'NEw import-experiment', 1, '[{\"added\": {}}]', 1, 2),
(34, '2021-11-10 06:56:31.773923', '5', 'NEw import-experiment', 3, '', 1, 2),
(35, '2021-11-10 06:58:14.021627', '6', 'Success import-Science and Nature', 1, '[{\"added\": {}}]', 1, 2),
(36, '2021-11-10 07:04:12.195143', '3', 'Another Basic-SQL ', 3, '', 1, 2),
(37, '2021-11-10 08:05:25.620262', '7', 'sports Quiz-Sports', 1, '[{\"added\": {}}]', 1, 2),
(38, '2021-11-10 08:33:39.326285', '8', 'Sports-50-Sportsss', 1, '[{\"added\": {}}]', 1, 2),
(39, '2021-11-11 07:22:39.895339', '585', 'Which of these countries national teams qualified for the 2018 FIFA World Cup in Russia?', 2, '[{\"changed\": {\"fields\": [\"Text\"]}}]', 2, 2),
(40, '2021-11-11 07:31:16.796598', '575', 'Who is Manchester United&#039;s top premier league goal scorer?', 3, '', 2, 2),
(41, '2021-11-11 07:31:16.799600', '573', 'How many French Open&#039;s did Bj&ouml;rn Borg win?', 3, '', 2, 2),
(42, '2021-11-11 07:31:16.801601', '565', 'Who won the &quot;Champions League&quot; in 1999?', 3, '', 2, 2),
(43, '2021-11-11 07:31:16.803604', '559', 'In 2016, who won the Formula 1 World Constructor&#039;s Championship for the third time in a row?', 3, '', 2, 2),
(44, '2021-11-11 07:31:16.807602', '545', 'Which Formula One driver was nicknamed &#039;The Professor&#039;?', 3, '', 2, 2),
(45, '2021-11-11 07:31:16.809606', '543', 'What is the nickname of Northampton town&#039;s rugby union club?', 3, '', 2, 2),
(46, '2021-11-11 07:31:16.813601', '541', 'Which of these teams isn&#039;t a member of the NHL&#039;s &quot;Original Six&quot; era?', 3, '', 2, 2),
(47, '2021-11-11 07:31:16.815604', '534', 'How many French Open&#039;s did Bj&ouml;rn Borg win?', 3, '', 2, 2),
(48, '2021-11-11 07:31:16.817604', '527', 'What is the nickname of Northampton town&#039;s rugby union club?', 3, '', 2, 2),
(49, '2021-11-11 07:31:16.819601', '509', 'In Psychology, which need appears highest in the &quot;Maslow&#039;s hierarchy of needs&quot; pyramid?', 3, '', 2, 2),
(50, '2021-11-11 07:31:16.823604', '508', 'Which desert is the only desert in the world where the &quot;Saguaro&quot; cactus grows indigenously?', 3, '', 2, 2),
(51, '2021-11-11 07:31:16.826602', '489', 'Where did the dog breed &quot;Chihuahua&quot; originate?', 3, '', 2, 2),
(52, '2021-11-11 07:31:32.565728', '8', 'Sports-50-Sportsss', 2, '[{\"changed\": {\"fields\": [\"Number of questions\"]}}]', 1, 2),
(53, '2021-11-11 07:52:37.381127', '6', 'Success import-Science and Nature', 2, '[{\"changed\": {\"fields\": [\"Number of questions\", \"Time\"]}}]', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(7, 'auth', 'group'),
(6, 'auth', 'permission'),
(8, 'auth', 'user'),
(9, 'contenttypes', 'contenttype'),
(3, 'questions', 'answer'),
(2, 'questions', 'question'),
(1, 'quizzes', 'quiz'),
(4, 'results', 'result'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-02 08:26:55.882608'),
(2, 'auth', '0001_initial', '2021-09-02 08:26:56.241971'),
(3, 'admin', '0001_initial', '2021-09-02 08:26:56.351340'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-02 08:26:56.366965'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-02 08:26:56.398214'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-02 08:26:56.473161'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-02 08:26:56.523131'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-02 08:26:56.552115'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-02 08:26:56.562516'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-02 08:26:56.593765'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-02 08:26:56.609390'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-02 08:26:56.625014'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-02 08:26:56.656263'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-02 08:26:56.671889'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-02 08:26:56.703137'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-02 08:26:56.734385'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-02 08:26:56.859380'),
(18, 'quizzes', '0001_initial', '2021-09-02 08:26:56.906254'),
(19, 'questions', '0001_initial', '2021-09-02 08:26:57.000001'),
(20, 'quizzes', '0002_alter_quiz_difficulty', '2021-09-02 08:26:57.000001'),
(21, 'quizzes', '0003_alter_quiz_difficulty', '2021-09-02 08:26:57.031250'),
(22, 'quizzes', '0004_alter_quiz_difficulty', '2021-09-02 08:26:57.078114'),
(23, 'quizzes', '0005_alter_quiz_difficulty', '2021-09-02 08:26:57.106991'),
(24, 'results', '0001_initial', '2021-09-02 08:26:57.198105'),
(25, 'sessions', '0001_initial', '2021-09-02 08:26:57.244977'),
(26, 'questions', '0002_auto_20210904_1543', '2021-09-04 09:58:09.536555');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2e9moryex758hp8akwzlsb101hhoh8kw', '.eJxVjEEOwiAQRe_C2hCg0IBL956BDDODVA0kpV013t026UK3_733NxFhXUpcO89xInEVRlx-twT44noAekJ9NImtLvOU5KHIk3Z5b8Tv2-n-HRToZa_BqZDAo2XSGY0iN5LV3lvHHhnIqsyjDrDzMBBoNCaDzgmAkhk8ic8XB6I5Pg:1meMHG:Q81dE4VdnFNDqKSx45ZeGVTLsb7i-2LaABTRIWr6M4Y', '2021-11-06 19:01:58.096236'),
('hhxas7be0vn6ey9wnbg16rdcmo2rzd3c', '.eJxVjEEOwiAQRe_C2hCg0IBL956BDDODVA0kpV013t026UK3_733NxFhXUpcO89xInEVRlx-twT44noAekJ9NImtLvOU5KHIk3Z5b8Tv2-n-HRToZa_BqZDAo2XSGY0iN5LV3lvHHhnIqsyjDrDzMBBoNCaDzgmAkhk8ic8XB6I5Pg:1mkPk5:x8xhXkC_UWSWIBzVDddCFaddEc7P-xgMEWuDLcN5-WI', '2021-11-23 11:56:45.175318'),
('ky2bcqjrjb7031u6zfp5z804h45w0sge', '.eJxVjEEOwiAQRe_C2hCg0IBL956BDDODVA0kpV013t026UK3_733NxFhXUpcO89xInEVRlx-twT44noAekJ9NImtLvOU5KHIk3Z5b8Tv2-n-HRToZa_BqZDAo2XSGY0iN5LV3lvHHhnIqsyjDrDzMBBoNCaDzgmAkhk8ic8XB6I5Pg:1meFyW:3e4lXBEWdhenxBWfxOahdxVtmSRSdwkD7O6N8sXDls8', '2021-11-06 12:18:12.220726'),
('wrqujh2894uvjz5p5qo0fall5hq9rjuk', '.eJxVjEEOwiAQRe_C2hDAAcSl-56BDDAjVUOT0q6Md7dNutDtf-_9t4i4LjWuneY4FnEVWpx-t4T5SW0H5YHtPsk8tWUek9wVedAuh6nQ63a4fwcVe91qAI0B0Gfy1hYb0llz4UtioKASMDtUHlGxy944awwiGNaaN0YOWXy-9ds4vA:1mLi5D:7Z3fYJ7TW7YNQzjiwXbg7yCpXiISexntHLU6XHra1Tc', '2021-09-16 08:28:27.815848');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` int(11) NOT NULL,
  `question` varchar(108) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `answersanswer_a` varchar(125) NOT NULL,
  `answersanswer_b` varchar(73) NOT NULL,
  `answersanswer_c` varchar(79) DEFAULT NULL,
  `answersanswer_d` varchar(159) DEFAULT NULL,
  `answersanswer_e` varchar(22) DEFAULT NULL,
  `answersanswer_f` varchar(30) DEFAULT NULL,
  `multiple_correct_answers` varchar(5) NOT NULL,
  `correct_answersanswer_a_correct` varchar(5) NOT NULL,
  `correct_answersanswer_b_correct` varchar(5) NOT NULL,
  `correct_answersanswer_c_correct` varchar(5) NOT NULL,
  `correct_answersanswer_d_correct` varchar(5) NOT NULL,
  `correct_answersanswer_e_correct` varchar(5) NOT NULL,
  `correct_answersanswer_f_correct` varchar(5) NOT NULL,
  `correct_answer` varchar(8) NOT NULL,
  `explanation` varchar(30) DEFAULT NULL,
  `tip` varchar(30) DEFAULT NULL,
  `tags0name` varchar(5) NOT NULL,
  `category` varchar(3) NOT NULL,
  `difficulty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `question`, `description`, `answersanswer_a`, `answersanswer_b`, `answersanswer_c`, `answersanswer_d`, `answersanswer_e`, `answersanswer_f`, `multiple_correct_answers`, `correct_answersanswer_a_correct`, `correct_answersanswer_b_correct`, `correct_answersanswer_c_correct`, `correct_answersanswer_d_correct`, `correct_answersanswer_e_correct`, `correct_answersanswer_f_correct`, `correct_answer`, `explanation`, `tip`, `tags0name`, `category`, `difficulty`) VALUES
(205, 'Which operator is included in the data manipulation language (DML)?', NULL, 'INSERT', 'GRANT', 'CREATE', 'DROP', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(206, 'SQL (Structured Query Language) is:', NULL, 'imperative programming language', 'the language of structured queries', 'the language of queries by pattern', 'DBMS (DataBase Management System)', NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1),
(210, 'DML is included into SQL language of:', NULL, 'managing users', 'managing transactions', 'description data', 'managing data', NULL, NULL, 'false', 'false', 'false', 'false', 'true', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(211, 'You have to sort records in the descending order by field \"rating\". Which query will be correct?', NULL, 'SORT BY \"rating\" DESC', 'SORT BY \"rating\"', 'ORDER BY \"rating\" DESC', 'ORDER BY \"rating\"', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1),
(212, 'Which operator is not included in the data manipulation language (DML)?', NULL, 'UPDATE', 'DELETE', 'CREATE', 'SELECT', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1),
(232, 'Which of the following statements are true about SQL injection attacks?', NULL, 'Wrapping all variables containing user input by a call to mysql_real_escape_string() makes the code immune to SQL injections.', 'Parametrized queries do not make code less vulnearable to SQL injections.', 'SQL injections are not possible, if only emulated prepared statements are used.', 'Usage of later versions of MySQL, validation, and explicit setting of the charset of user input are valid measures to decrease vulnerability to SQL injections.', 'None of the above', NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3),
(244, 'What is the default DATE field type format?', NULL, 'DD-MM-YYYY', 'YYYY-DD-MM', 'YYYY-MM-DD', 'MM-DD-YY', 'MMDDYYYY', NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(248, 'Which of the following will raise MySQL\'s version of an error?', NULL, 'SIGNAL', 'RAISE', 'ERROR', 'None of these', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(252, 'Which of the following is the best way to modify a table to allow null values?', NULL, 'ALTER TABLE table MODIFY column varchar(255) null', 'ALTER TABLE table MODIFY column VARCHAR(255)', 'ALTER TABLE table CHANGE column column type DEFAULT NULL', 'ALTER table MODIFY column varchar(255) null', 'None of the above', NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3),
(338, 'What is the maximum size of a row in a MyISAM table?', NULL, 'No limit', 'OS specific', '65534', '128', '2’147’483’648', NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3),
(356, 'The WHERE clause is mandatory when using the SELECT command', NULL, 'True', 'False', NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1),
(360, 'The query SELECT * FROM `movies` INSERT INTO `movies_archive`  will be executed without any errors.', NULL, 'True', 'False', NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(385, 'To use \'mysqldbcopy\' which privileges are required on the source server?', NULL, 'CREATE', 'UPDATE', 'SELECT', 'INSERT', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(387, 'Which function returns reference to Array of row values?', NULL, 'Fetch()', 'Fetchrow_arrayref()', 'Fetchrow_hashref()', 'Fetchrow_array()', 'Fetchrow_refarray()', NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(390, 'MySQL supports different Character Sets, which command is used to display all of them?', NULL, 'SHOW;  ;', 'None Of The Mentioned', 'CHARACTER SET;', 'SHOW CHARACTER SET', NULL, NULL, 'false', 'false', 'false', 'false', 'true', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1),
(415, 'Which declaration doesn\'t use the same number of bytes and consumption of bytes depending on the input data?', NULL, 'Varchar', 'None Of The Mentioned', 'Char', 'Both Varchar And Char', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(418, 'MySQL comes with a standard client libraries for:', NULL, 'C Only', 'PHP And C', 'Perl,  Java And C', 'Java Only', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(437, 'What is called if a value shouldn\'t be greater than 100?', NULL, 'Integrity constraint', 'Feasible constraint', 'Over-defined constraint', 'Referential constraint', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2),
(440, 'What is the Commit command is used for?', NULL, 'To restore the old values', 'To recover the old table', 'To save the current transaction', 'To save the current table', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3),
(474, 'What type of join is needed when you wish to return rows that have matching values?', NULL, 'Equi-join', 'All of the mentioned.', 'Outer join', 'Natural join', 'None of the mentioned.', NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsqltable`
--

CREATE TABLE `newsqltable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(108) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `answersanswer_a` varchar(125) DEFAULT NULL,
  `answersanswer_b` varchar(73) DEFAULT NULL,
  `answersanswer_c` varchar(79) DEFAULT NULL,
  `answersanswer_d` varchar(159) DEFAULT NULL,
  `answersanswer_e` varchar(22) DEFAULT NULL,
  `answersanswer_f` varchar(30) DEFAULT NULL,
  `multiple_correct_answers` varchar(5) DEFAULT NULL,
  `correct_answersanswer_a_correct` varchar(5) DEFAULT NULL,
  `correct_answersanswer_b_correct` varchar(5) DEFAULT NULL,
  `correct_answersanswer_c_correct` varchar(5) DEFAULT NULL,
  `correct_answersanswer_d_correct` varchar(5) DEFAULT NULL,
  `correct_answersanswer_e_correct` varchar(5) DEFAULT NULL,
  `correct_answersanswer_f_correct` varchar(5) DEFAULT NULL,
  `correct_answer` varchar(8) DEFAULT NULL,
  `explanation` varchar(30) DEFAULT NULL,
  `tip` varchar(30) DEFAULT NULL,
  `tags0name` varchar(5) DEFAULT NULL,
  `category` varchar(3) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsqltable`
--

INSERT INTO `newsqltable` (`id`, `text`, `description`, `answersanswer_a`, `answersanswer_b`, `answersanswer_c`, `answersanswer_d`, `answersanswer_e`, `answersanswer_f`, `multiple_correct_answers`, `correct_answersanswer_a_correct`, `correct_answersanswer_b_correct`, `correct_answersanswer_c_correct`, `correct_answersanswer_d_correct`, `correct_answersanswer_e_correct`, `correct_answersanswer_f_correct`, `correct_answer`, `explanation`, `tip`, `tags0name`, `category`, `difficulty`, `quiz_id`) VALUES
(205, 'Which operator is included in the data manipulation language (DML)?', NULL, 'INSERT', 'GRANT', 'CREATE', 'DROP', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(206, 'SQL (Structured Query Language) is:', NULL, 'imperative programming language', 'the language of structured queries', 'the language of queries by pattern', 'DBMS (DataBase Management System)', NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1, 3),
(210, 'DML is included into SQL language of:', NULL, 'managing users', 'managing transactions', 'description data', 'managing data', NULL, NULL, 'false', 'false', 'false', 'false', 'true', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(211, 'You have to sort records in the descending order by field \"rating\". Which query will be correct?', NULL, 'SORT BY \"rating\" DESC', 'SORT BY \"rating\"', 'ORDER BY \"rating\" DESC', 'ORDER BY \"rating\"', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1, 3),
(212, 'Which operator is not included in the data manipulation language (DML)?', NULL, 'UPDATE', 'DELETE', 'CREATE', 'SELECT', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1, 3),
(232, 'Which of the following statements are true about SQL injection attacks?', NULL, 'Wrapping all variables containing user input by a call to mysql_real_escape_string() makes the code immune to SQL injections.', 'Parametrized queries do not make code less vulnearable to SQL injections.', 'SQL injections are not possible, if only emulated prepared statements are used.', 'Usage of later versions of MySQL, validation, and explicit setting of the charset of user input are valid measures to decrease vulnerability to SQL injections.', 'None of the above', NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3, 3),
(244, 'What is the default DATE field type format?', NULL, 'DD-MM-YYYY', 'YYYY-DD-MM', 'YYYY-MM-DD', 'MM-DD-YY', 'MMDDYYYY', NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(248, 'Which of the following will raise MySQL\'s version of an error?', NULL, 'SIGNAL', 'RAISE', 'ERROR', 'None of these', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(252, 'Which of the following is the best way to modify a table to allow null values?', NULL, 'ALTER TABLE table MODIFY column varchar(255) null', 'ALTER TABLE table MODIFY column VARCHAR(255)', 'ALTER TABLE table CHANGE column column type DEFAULT NULL', 'ALTER table MODIFY column varchar(255) null', 'None of the above', NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3, 3),
(338, 'What is the maximum size of a row in a MyISAM table?', NULL, 'No limit', 'OS specific', '65534', '128', '2’147’483’648', NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3, 3),
(356, 'The WHERE clause is mandatory when using the SELECT command', NULL, 'True', 'False', NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1, 3),
(360, 'The query SELECT * FROM `movies` INSERT INTO `movies_archive`  will be executed without any errors.', NULL, 'True', 'False', NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(385, 'To use \'mysqldbcopy\' which privileges are required on the source server?', NULL, 'CREATE', 'UPDATE', 'SELECT', 'INSERT', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(387, 'Which function returns reference to Array of row values?', NULL, 'Fetch()', 'Fetchrow_arrayref()', 'Fetchrow_hashref()', 'Fetchrow_array()', 'Fetchrow_refarray()', NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(390, 'MySQL supports different Character Sets, which command is used to display all of them?', NULL, 'SHOW;  ;', 'None Of The Mentioned', 'CHARACTER SET;', 'SHOW CHARACTER SET', NULL, NULL, 'false', 'false', 'false', 'false', 'true', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 1, 3),
(415, 'Which declaration doesn\'t use the same number of bytes and consumption of bytes depending on the input data?', NULL, 'Varchar', 'None Of The Mentioned', 'Char', 'Both Varchar And Char', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(418, 'MySQL comes with a standard client libraries for:', NULL, 'C Only', 'PHP And C', 'Perl,  Java And C', 'Java Only', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(437, 'What is called if a value shouldn\'t be greater than 100?', NULL, 'Integrity constraint', 'Feasible constraint', 'Over-defined constraint', 'Referential constraint', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 2, 3),
(440, 'What is the Commit command is used for?', NULL, 'To restore the old values', 'To recover the old table', 'To save the current transaction', 'To save the current table', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3, 3),
(474, 'What type of join is needed when you wish to return rows that have matching values?', NULL, 'Equi-join', 'All of the mentioned.', 'Outer join', 'Natural join', 'None of the mentioned.', NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'answer_a', NULL, NULL, 'MySQL', 'SQL', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions_answer`
--

CREATE TABLE `questions_answer` (
  `id` bigint(20) NOT NULL,
  `text` varchar(200) NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `question_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions_answer`
--

INSERT INTO `questions_answer` (`id`, `text`, `correct`, `question_id`) VALUES
(1, 'django', 1, 1),
(2, 'Flask', 0, 1),
(3, 'Laravel', 0, 1),
(4, 'Authorization', 1, 2),
(5, 'Authentication', 0, 2),
(6, 'Authflamification', 0, 2),
(7, 'You master it first', 0, 3),
(8, 'Just google', 0, 3),
(9, 'Don\'t do it!', 0, 3),
(10, 'Just do it!', 1, 3),
(11, 'Epic', 0, 4),
(12, 'Correct', 0, 4),
(13, 'Politically correct', 1, 4),
(14, 'I became so numb!', 0, 4),
(15, '300,000 years ago', 1, 475),
(16, '400,000 years ago', 0, 475),
(17, '500,000 years ago', 0, 475),
(18, '300,000 years later', 0, 476),
(19, '400,000 years later', 0, 476),
(20, '500,000 years later', 0, 476),
(21, 'dunno', 1, 476),
(22, 'Nitrogen', 1, 477),
(23, 'Helium', 0, 477),
(24, 'Carbon', 0, 477),
(25, 'Hydrogen', 0, 477),
(26, 'Red', 1, 478),
(27, 'Blue', 0, 478),
(28, 'Purple', 0, 478),
(29, 'Green', 0, 478),
(30, 'Lift', 1, 479),
(31, 'Thrust', 0, 479),
(32, 'Drag', 0, 479),
(33, 'Weight ', 0, 479),
(34, 'UY Scuti', 1, 480),
(35, 'VY Canis Majoris', 0, 480),
(36, 'Betelgeuse', 0, 480),
(37, 'RW Cephei', 0, 480),
(38, 'Talc', 1, 481),
(39, 'Quartz', 0, 481),
(40, 'Diamond', 0, 481),
(41, 'Gypsum', 0, 481),
(42, 'Jupiter', 1, 482),
(43, 'Uranus', 0, 482),
(44, 'Neptune', 0, 482),
(45, 'Mars', 0, 482),
(46, 'Helium', 1, 483),
(47, 'Hydrogen', 0, 483),
(48, 'Neon', 0, 483),
(49, 'Nitrogen', 0, 483),
(50, 'Nitrogen', 1, 484),
(51, 'Oxygen', 0, 484),
(52, 'Hydrogen', 0, 484),
(53, 'Neon', 0, 484),
(54, 'Gold', 1, 485),
(55, 'Silver', 0, 485),
(56, 'Oxygen', 0, 485),
(57, 'Nickel', 0, 485),
(58, 'Beryllium', 1, 486),
(59, 'Gallium', 0, 486),
(60, 'Caesium', 0, 486),
(61, 'Mercury', 0, 486),
(62, 'low, all', 1, 487),
(63, 'low, some', 0, 487),
(64, 'high, all', 0, 487),
(65, 'high, some', 0, 487),
(66, 'NH3', 1, 488),
(67, 'CO2', 0, 488),
(68, 'NO3', 0, 488),
(69, 'CH4', 0, 488),
(74, 'Polycarbonate', 1, 490),
(75, 'Rubber', 0, 490),
(76, 'Nylon', 0, 490),
(77, 'Bakelite', 0, 490),
(78, 'Bones', 1, 491),
(79, 'Skin', 0, 491),
(80, 'Brain', 0, 491),
(81, 'Heart', 0, 491),
(82, '38', 1, 492),
(83, '73', 0, 492),
(84, '47', 0, 492),
(85, '11', 0, 492),
(86, 'Islets of Langerhans', 1, 493),
(87, 'Node of Ranvier', 0, 493),
(88, 'Schwann cell', 0, 493),
(89, 'Myelin sheath', 0, 493),
(90, 'Eyes', 1, 494),
(91, 'Throat', 0, 494),
(92, 'Stomach', 0, 494),
(93, 'Blood', 0, 494),
(94, 'Ernest Rutherford', 1, 495),
(95, 'Joseph John Thomson', 0, 495),
(96, 'Archimedes', 0, 495),
(97, 'Niels Henrik David Bohr', 0, 495),
(98, 'Copenhagen', 1, 496),
(99, 'Odense', 0, 496),
(100, 'Herning', 0, 496),
(101, 'Skagen', 0, 496),
(102, 'Ankle jerk reflex', 1, 497),
(103, 'Gag reflex', 0, 497),
(104, 'Pupillary light reflex', 0, 497),
(105, 'Scratch reflex', 0, 497),
(106, 'Reactivity', 1, 498),
(107, 'Health', 0, 498),
(108, 'Flammability', 0, 498),
(109, 'Radioactivity', 0, 498),
(110, '3', 1, 499),
(111, '4', 0, 499),
(112, '2', 0, 499),
(113, '1', 0, 499),
(114, 'Shortsightedness', 1, 500),
(115, 'Farsightedness', 0, 500),
(116, 'Double Vision', 0, 500),
(117, 'Clouded Vision', 0, 500),
(118, '4', 1, 501),
(119, '3', 0, 501),
(120, '5', 0, 501),
(121, '6', 0, 501),
(122, 'Interphase', 1, 502),
(123, 'Prophase', 0, 502),
(124, 'Stasis', 0, 502),
(125, 'Telophase', 0, 502),
(126, '212&deg;F', 1, 503),
(127, '200&deg;F', 0, 503),
(128, '181&deg;F', 0, 503),
(129, '178&deg;F', 0, 503),
(130, 'Neon', 1, 504),
(131, 'Potassium', 0, 504),
(132, 'Iodine', 0, 504),
(133, 'Colbalt', 0, 504),
(134, 'Electron', 1, 505),
(135, 'Neutron', 0, 505),
(136, 'Proton', 0, 505),
(137, 'Photon', 0, 505),
(138, 'Wilhelm Conrad R&ouml;ntgen', 1, 506),
(139, 'Thomas Alva Edison', 0, 506),
(140, 'James Watt', 0, 506),
(141, 'Albert Einstein', 0, 506),
(142, 'Farad', 1, 507),
(143, 'Gauss', 0, 507),
(144, 'Henry', 0, 507),
(145, 'Watt', 0, 507),
(154, 'Keratin', 1, 510),
(155, 'Bone', 0, 510),
(156, 'Chitin', 0, 510),
(157, 'Calcium', 0, 510),
(158, 'Honey Fungus', 1, 511),
(159, 'Blue Whale', 0, 511),
(160, 'Redwood Tree', 0, 511),
(161, 'The Coral Reef', 0, 511),
(162, 'STS-107', 1, 512),
(163, 'STS-51-L', 0, 512),
(164, 'STS-61-C', 0, 512),
(165, 'STS-109', 0, 512),
(166, 'Hippocampus', 1, 513),
(167, 'Cerebellum', 0, 513),
(168, 'Thalamus', 0, 513),
(169, 'Amygdala', 0, 513),
(170, '84 Earth years', 1, 514),
(171, '47 Earth years', 0, 514),
(172, '62 Earth years', 0, 514),
(173, '109 Earth years', 0, 514),
(174, 'Astatine', 1, 515),
(175, 'Selenium', 0, 515),
(176, 'Antimony', 0, 515),
(177, 'Molybdenum', 0, 515),
(178, 'Sir Isaac Newton', 1, 516),
(179, 'Albert Einstein', 0, 516),
(180, 'Niels Bohr', 0, 516),
(181, 'Enrico Fermi', 0, 516),
(182, 'Knee', 1, 517),
(183, 'Elbow', 0, 517),
(184, 'Ankle', 0, 517),
(185, 'Shoulder', 0, 517),
(186, 'Cornwall', 1, 518),
(187, 'Surrey', 0, 518),
(188, 'Wales', 0, 518),
(189, 'The Midlands', 0, 518),
(190, 'Malus pumila', 1, 519),
(191, 'Malus americana', 0, 519),
(192, 'Pomus domestica', 0, 519),
(193, 'Appelus delectica', 0, 519),
(194, 'Diplophase', 1, 520),
(195, 'Metaphase', 0, 520),
(196, 'Anaphase', 0, 520),
(197, 'Telophase', 0, 520),
(198, 'Transistor', 1, 521),
(199, 'Resistor', 0, 521),
(200, 'Capacitor', 0, 521),
(201, 'Inductor', 0, 521),
(202, 'Histology', 1, 522),
(203, 'Microbiology', 0, 522),
(204, 'Anatomy', 0, 522),
(205, 'Biochemistry', 0, 522),
(206, 'Increase in blood sodium', 1, 523),
(207, 'Decrease in blood potassium', 0, 523),
(208, 'Increase in blood glucose', 0, 523),
(209, 'Decrease in blood iron', 0, 523),
(210, 'Capillaries', 1, 524),
(211, 'Arterioles', 0, 524),
(212, 'Veinules', 0, 524),
(213, 'Lymphatics', 0, 524),
(214, 'Center Core Landing', 1, 525),
(215, 'Side Booster Landing', 0, 525),
(216, 'Deployment of Starman', 0, 525),
(217, 'Ignition and Liftoff', 0, 525),
(218, '13.8 Billion Years', 1, 526),
(219, '4.5 Billion Years', 0, 526),
(220, '7.9 Billion Years', 0, 526),
(221, '16.2 Billion Years', 0, 526),
(226, 'Golf Putting Green', 1, 528),
(227, ' Football Pitch', 0, 528),
(228, 'Cricket Outfield', 0, 528),
(229, 'Pinball Table', 0, 528),
(230, 'Black', 1, 529),
(231, 'White', 0, 529),
(232, 'Red', 0, 529),
(233, 'Green', 0, 529),
(234, 'Chile', 1, 530),
(235, 'Argentina', 0, 530),
(236, 'Brazil', 0, 530),
(237, 'Paraguay', 0, 530),
(238, 'Chile', 1, 531),
(239, 'Argentina', 0, 531),
(240, 'Brazil', 0, 531),
(241, 'Colombia', 0, 531),
(242, 'Ohio State Buckeyes', 1, 532),
(243, 'Alabama Crimson Tide', 0, 532),
(244, 'Clemson Tigers', 0, 532),
(245, 'Wisconsin Badgers', 0, 532),
(246, '1961', 1, 533),
(247, '1965', 0, 533),
(248, '1959', 0, 533),
(249, '1963', 0, 533),
(254, 'Wayne Rooney', 1, 535),
(255, 'David Beckham', 0, 535),
(256, 'Steven Gerrard', 0, 535),
(257, 'Michael Owen', 0, 535),
(258, 'Boston Bruins', 1, 536),
(259, 'Montreal Canadiens', 0, 536),
(260, 'New York Rangers', 0, 536),
(261, 'Toronto Maple Leafs', 0, 536),
(262, 'Putney', 1, 537),
(263, 'Hammersmith', 0, 537),
(264, 'Vauxhall ', 0, 537),
(265, 'Battersea', 0, 537),
(266, 'Jordan', 1, 538),
(267, 'Benetton', 0, 538),
(268, 'Ferrari', 0, 538),
(269, 'Mercedes', 0, 538),
(274, 'Duck', 1, 540),
(275, 'Bye', 0, 540),
(276, 'Beamer', 0, 540),
(277, 'Carry', 0, 540),
(282, 'Big Daddy', 1, 542),
(283, 'Giant Haystacks', 0, 542),
(284, 'Kendo Nagasaki', 0, 542),
(285, 'Masambula', 0, 542),
(290, 'Golf Putting Green', 1, 544),
(291, ' Football Pitch', 0, 544),
(292, 'Cricket Outfield', 0, 544),
(293, 'Pinball Table', 0, 544),
(298, 'Green', 1, 546),
(299, 'Yellow', 0, 546),
(300, 'Brown', 0, 546),
(301, 'Blue', 0, 546),
(302, 'True', 1, 547),
(303, 'False', 0, 547),
(304, 'Germany', 1, 548),
(305, 'United Kingdom', 0, 548),
(306, 'Brazil', 0, 548),
(307, 'South Africa', 0, 548),
(308, 'Death of Ayrton Senna (San Marino)', 1, 549),
(309, 'The Showdown (Australia)', 0, 549),
(310, 'Verstappen on Fire (Germany)', 0, 549),
(311, 'Schumacher&#039;s Ban (Britain)', 0, 549),
(312, 'Black', 1, 550),
(313, 'White', 0, 550),
(314, 'Red', 0, 550),
(315, 'Green', 0, 550),
(316, 'Qatar', 1, 551),
(317, 'Uganda', 0, 551),
(318, 'Vietnam', 0, 551),
(319, 'Bolivia', 0, 551),
(320, 'False', 1, 552),
(321, 'True', 0, 552),
(322, 'Golden State Warriors', 1, 553),
(323, 'Cleveland Cavaliers', 0, 553),
(324, 'Houston Rockets', 0, 553),
(325, 'Atlanta Hawks', 0, 553),
(326, 'Penrith Panthers', 1, 554),
(327, 'Melbourne Storm', 0, 554),
(328, 'Sydney Roosters', 0, 554),
(329, 'North Queensland Cowboys', 0, 554),
(330, 'Porsche', 1, 555),
(331, 'Toyota', 0, 555),
(332, 'Audi', 0, 555),
(333, 'Ferrari', 0, 555),
(334, 'True', 1, 556),
(335, 'False', 0, 556),
(336, 'Chile', 1, 557),
(337, 'Argentina', 0, 557),
(338, 'Brazil', 0, 557),
(339, 'Colombia', 0, 557),
(340, 'False', 1, 558),
(341, 'True', 0, 558),
(346, 'Arizona Cardinals', 1, 560),
(347, 'Chicago Bears', 0, 560),
(348, 'Green Bay Packers', 0, 560),
(349, 'New York Giants', 0, 560),
(350, 'US Open', 1, 561),
(351, 'French Open', 0, 561),
(352, 'Wimbledon', 0, 561),
(353, 'Australian Open', 0, 561),
(354, '84.39m', 1, 562),
(355, '100m', 0, 562),
(356, '100yd', 0, 562),
(357, '109.36yd', 0, 562),
(358, 'Madeira', 1, 563),
(359, 'Terceira', 0, 563),
(360, 'Santa Maria', 0, 563),
(361, 'Porto Santo', 0, 563),
(362, 'True', 1, 564),
(363, 'False', 0, 564),
(368, 'Ohio State Buckeyes', 1, 566),
(369, 'Alabama Crimson Tide', 0, 566),
(370, 'Clemson Tigers', 0, 566),
(371, 'Wisconsin Badgers', 0, 566),
(372, '1961', 1, 567),
(373, '1965', 0, 567),
(374, '1959', 0, 567),
(375, '1963', 0, 567),
(376, 'Jose Fernandez', 1, 568),
(377, 'Jacob deGrom', 0, 568),
(378, 'Shelby Miller', 0, 568),
(379, 'Matt Harvey', 0, 568),
(380, 'To prevent viewing games from outside the park.', 1, 569),
(381, 'To make getting home runs harder.', 0, 569),
(382, 'To display advertisements.', 0, 569),
(383, 'To provide extra seating.', 0, 569),
(384, 'Porsche', 1, 570),
(385, 'Toyota', 0, 570),
(386, 'Audi', 0, 570),
(387, 'Chevrolet', 0, 570),
(388, 'Shaquille O&#039;Neal', 1, 571),
(389, 'Allen Iverson', 0, 571),
(390, 'Kobe Bryant', 0, 571),
(391, 'Paul Pierce', 0, 571),
(392, 'True', 1, 572),
(393, 'False', 0, 572),
(398, 'True', 1, 574),
(399, 'False', 0, 574),
(404, 'Wayne Rooney', 1, 576),
(405, 'Cristiano Ronaldo', 0, 576),
(406, 'Robin Van Persie', 0, 576),
(407, 'David Beckham', 0, 576),
(408, 'Owen Hart', 1, 577),
(409, 'Chris Benoit', 0, 577),
(410, 'Lex Luger', 0, 577),
(411, 'Al Snow', 0, 577),
(412, 'Wayne Rooney', 1, 578),
(413, 'David Beckham', 0, 578),
(414, 'Steven Gerrard', 0, 578),
(415, 'Michael Owen', 0, 578),
(416, 'Carlos Sainz Jr.', 1, 579),
(417, 'Daniil Kvyat', 0, 579),
(418, 'Jolyon Palmer', 0, 579),
(419, 'Rio Haryanto', 0, 579),
(420, 'Boston Bruins', 1, 580),
(421, 'Montreal Canadiens', 0, 580),
(422, 'New York Rangers', 0, 580),
(423, 'Toronto Maple Leafs', 0, 580),
(424, 'Toronto Marlies', 1, 581),
(425, 'Toronto Rock', 0, 581),
(426, 'Toronto Argonauts', 0, 581),
(427, 'Toronto Wolfpack', 0, 581),
(428, 'Russia', 1, 582),
(429, 'Canada', 0, 582),
(430, 'United States', 0, 582),
(431, 'Germany', 0, 582),
(432, 'Robert Parish', 1, 583),
(433, 'Kareem Abdul-Jabbar', 0, 583),
(434, 'Kevin Garnett', 0, 583),
(435, 'Kobe Bryant', 0, 583),
(436, 'Los Angeles Lakers', 1, 584),
(437, 'Boston Celtics', 0, 584),
(438, 'Philadelphia 76ers', 0, 584),
(439, 'Golden State Warriors', 0, 584),
(440, 'Tunisia', 1, 585),
(441, 'United States of America', 0, 585),
(442, 'Italy', 0, 585),
(443, 'Netherlands', 0, 585),
(444, 'James Rodr&iacute;guez', 1, 586),
(445, 'Thomas M&uuml;ller', 0, 586),
(446, 'Lionel Messi', 0, 586),
(447, 'Neymar', 0, 586);

-- --------------------------------------------------------

--
-- Table structure for table `questions_question`
--

CREATE TABLE `questions_question` (
  `id` bigint(20) NOT NULL,
  `text` varchar(200) NOT NULL,
  `quiz_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions_question`
--

INSERT INTO `questions_question` (`id`, `text`, `quiz_id`) VALUES
(1, 'What is the best backend?', 1),
(2, 'What does auth stand for?', 1),
(3, 'What is the way to add css and js in the html?', 2),
(4, 'How are you?', 2),
(475, 'When did humans start to exist?', 4),
(476, 'When will humans become extinct?', 4),
(477, 'Along with Oxygen, which element is primarily responsible for the sky appearing blue?', 6),
(478, 'What is the colour of unoxidized blood?', 6),
(479, 'In aeronautics, flaps and slats are used to control what on an aircraft?', 6),
(480, 'Which of these stars is the largest?', 6),
(481, 'What mineral has the lowest number on the Mohs scale?', 6),
(482, 'Gannymede is the largest moon of which planet?', 6),
(483, 'Which chemical element has the lowest boiling point?', 6),
(484, 'Which element has the atomic number of 7?', 6),
(485, 'Au on the Periodic Table refers to which element?', 6),
(486, 'All the following metal elements are liquids at or near room temperature EXCEPT:', 6),
(487, 'The Axiom of Preventive Medicine states that people with ___ risk for a disease should be screened and we should treat ___ of those people.', 6),
(488, 'What is the chemical formula for ammonia?', 6),
(490, 'What polymer is used to make CDs, safety goggles and riot shields?', 6),
(491, 'The medical condition osteoporosis affects which part of the body?', 6),
(492, 'What is the atomic number of the element Strontium?', 6),
(493, 'Which of these is NOT a part of the structure of a typical neuron?', 6),
(494, 'Which part of the body does glaucoma affect?', 6),
(495, 'Which one of these scientists conducted the Gold Foil Experiment which concluded that atoms are mostly made of empty space?', 6),
(496, 'After which Danish city is the 72th element on the periodic table named?', 6),
(497, 'Which of these is a type of stretch/deep tendon reflex?', 6),
(498, 'What does the yellow diamond on the NFPA 704 fire diamond represent?', 6),
(499, 'The human right lung has how many lobes?', 6),
(500, 'Myopia is the scientific term for which condition?', 6),
(501, 'In Chemistry, how many isomers does Butanol (C4H9OH) have?', 6),
(502, 'What stage of development do the majority of eukaryotic cells remain in for most of their life?', 6),
(503, 'At what temperature does water boil?', 6),
(504, 'Which of these elements on the Periodic Table is a Noble Gas?', 6),
(505, 'A positron is an antiparticle of a what?', 6),
(506, 'Who made the discovery of X-rays?', 6),
(507, 'What is the unit of electrical capacitance?', 6),
(510, 'What are human nails made of?', 6),
(511, 'What is the largest living organism currently known to man?', 6),
(512, 'On which mission did the Space Shuttle Columbia break up upon re-entry?', 6),
(513, 'What part of the brain takes its name from the Greek for seahorse?', 6),
(514, 'Approximately how long is a year on Uranus?', 6),
(515, 'Which chemical element was originally known as Alabamine?', 6),
(516, 'Which of the following men does not have a chemical element named after him?', 6),
(517, 'The medial meniscus forms which part of what joint in the human body?', 6),
(518, 'Where did the Great Storm of 1987 make landfall at, first?', 6),
(519, 'What is the Linnean name of the domestic apple tree?', 6),
(520, 'Which of these choices is not one of the phases of mitosis?', 6),
(521, 'Which of the following is NOT a passive electrical component?', 6),
(522, 'What is the study of the cells and tissues of plants and animals?', 6),
(523, 'What is Hypernatremia?', 6),
(524, 'What are the smallest blood vessels in the human body?', 6),
(526, 'How old is the universe?', 6),
(537, 'At which bridge does the annual Oxford and Cambridge boat race start?', 8),
(538, 'With which team did Michael Schumacher make his Formula One debut at the 1991 Belgian Grand Prix?', 8),
(540, 'What cricketing term denotes a batsman being dismissed with a score of zero?', 8),
(542, 'Who was the British professional wrestler Shirley Crabtree better known as?', 8),
(544, 'A stimpmeter measures the speed of a ball over what surface?', 8),
(546, 'In a game of snooker, what colour ball is worth 3 points?', 8),
(547, 'Soccer player Cristiano Ronaldo opened a museum dedicated to himself.', 8),
(548, 'Which nation hosted the FIFA World Cup in 2006?', 8),
(549, 'The F1 season of 1994 is remembered for what tragic event?', 8),
(550, 'What is the highest belt you can get in Taekwondo?', 8),
(551, 'Which country is hosting the 2022 FIFA World Cup?', 8),
(552, 'Tennis was once known as Racquetball.', 8),
(553, 'Which team was the 2014-2015 NBA Champions?', 8),
(554, 'Josh Mansour is part of what NRL team?', 8),
(555, 'Which car manufacturer won the 2016 24 Hours of Le Mans?', 8),
(556, 'The Olympics tennis court is a giant green screen.', 8),
(557, 'Which soccer team won the Copa Am&eacute;rica Centenario 2016?', 8),
(558, 'Formula E is an auto racing series that uses hybrid electric race cars.', 8),
(560, 'What is the oldest team in the NFL?', 8),
(561, 'Which of the following Grand Slam tennis tournaments occurs LAST?', 8),
(562, 'What is the exact length of one non-curved part in Lane 1 of an Olympic Track?', 8),
(563, 'Which portuguese island is soccer player Cristiano Ronaldo from?', 8),
(564, 'Wilt Chamberlain scored his infamous 100-point-game against the New York Knicks in 1962.', 8),
(566, 'Who won the 2015 College Football Playoff (CFP) National Championship? ', 8),
(567, 'What year was hockey legend Wayne Gretzky born?', 8),
(568, 'Which of the following pitchers was named National League Rookie of the Year for the 2013 season?', 8),
(569, 'Why was The Green Monster at Fenway Park was originally built?', 8),
(570, 'Which car manufacturer won the 2017 24 Hours of Le Mans?', 8),
(571, 'Which NBA player won Most Valuable Player for the 1999-2000 season?', 8),
(572, 'During Wimbledon, spectators in the grounds can buy the tennis balls that have been used in matches.', 8),
(574, 'ATP tennis hosted several tournaments on carpet court before being replaced to reduce injuries.', 8),
(576, 'Which of the following player scored a hat-trick during their Manchester United debut?', 8),
(577, 'Which professional wrestler fell from the rafters to his death during a live Pay-Per-View event in 1999?', 8),
(578, 'Who was the topscorer for England national football team?', 8),
(579, 'Which Formula 1 driver switched teams in the middle of the 2017 season?', 8),
(580, 'Who won the 2011 Stanley Cup?', 8),
(581, 'What is the name of the AHL affiliate of the Toronto Maple Leafs?', 8),
(582, 'What country hosted the 2014 Winter Olympics?', 8),
(583, 'Which NBA player has the most games played over the course of their career?', 8),
(584, 'Which basketball team has attended the most NBA grand finals?', 8),
(585, 'Which of these countries national teams qualified for the 2018 FIFA World Cup in Russia?', 8),
(586, 'Who was the top scorer of the 2014 FIFA World Cup?', 8);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_quiz`
--

CREATE TABLE `quizzes_quiz` (
  `id` bigint(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `topic` varchar(120) NOT NULL,
  `number_of_questions` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `required_score_to_pass` int(11) NOT NULL,
  `difficulty` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizzes_quiz`
--

INSERT INTO `quizzes_quiz` (`id`, `name`, `topic`, `number_of_questions`, `time`, `required_score_to_pass`, `difficulty`) VALUES
(1, 'general knowledge', 'Django', 2, 2, 50, '2'),
(2, 'Basic', 'Test', 2, 2, 50, '2'),
(4, 'New revolution', 'HUman Extinction', 2, 2, 50, '2'),
(6, 'Success import', 'Science and Nature', 50, 10, 50, '2'),
(8, 'Sports-50', 'Sportsss', 25, 10, 50, '3');

-- --------------------------------------------------------

--
-- Table structure for table `results_result`
--

CREATE TABLE `results_result` (
  `id` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `quiz_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results_result`
--

INSERT INTO `results_result` (`id`, `score`, `quiz_id`, `user_id`) VALUES
(1, 0, 1, 1),
(2, 0, 1, 1),
(3, 100, 1, 1),
(4, 0, 2, 1),
(6, 0, 1, 2),
(7, 100, 1, 2),
(8, 100, 1, 2),
(9, 50, 1, 2),
(10, 100, 1, 2),
(11, 0, 2, 2),
(12, 50, 1, 2),
(13, 0, 1, 2),
(14, 50, 4, 2),
(15, 100, 4, 2),
(16, 100, 1, 2),
(17, 100, 4, 2),
(18, 100, 1, 2),
(19, 0, 1, 2),
(20, 0, 1, 2),
(21, 100, 1, 2),
(22, 0, 1, 2),
(23, 0, 1, 2),
(24, 0, 1, 2),
(25, 100, 2, 2),
(26, 100, 1, 2),
(27, 50, 1, 2),
(28, 50, 1, 2),
(29, 0, 1, 2),
(30, 50, 1, 2),
(31, 32, 8, 2),
(32, 14, 6, 2),
(33, 26, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sqlquiz`
--

CREATE TABLE `sqlquiz` (
  `list_id` int(11) DEFAULT NULL,
  `list_question` varchar(108) CHARACTER SET utf8 DEFAULT NULL,
  `list_description` int(11) DEFAULT NULL,
  `list_answers_answer_a` varchar(125) CHARACTER SET utf8 DEFAULT NULL,
  `list_answers_answer_b` varchar(73) CHARACTER SET utf8 DEFAULT NULL,
  `list_answers_answer_c` varchar(79) CHARACTER SET utf8 DEFAULT NULL,
  `list_answers_answer_d` varchar(159) CHARACTER SET utf8 DEFAULT NULL,
  `list_answers_answer_e` varchar(22) CHARACTER SET utf8 DEFAULT NULL,
  `list_answers_answer_f` int(11) DEFAULT NULL,
  `list_multiple_correct_answers` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `list_correct_answers_answer_a_correct` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `list_correct_answers_answer_b_correct` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `list_correct_answers_answer_c_correct` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `list_correct_answers_answer_d_correct` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `list_correct_answers_answer_e_correct` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `list_correct_answers_answer_f_correct` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `list_correct_answer` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `list_explanation` int(11) DEFAULT NULL,
  `list_tip` int(11) DEFAULT NULL,
  `list_tags_name` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `list_category` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `list_difficulty` varchar(6) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sqlquiz`
--

INSERT INTO `sqlquiz` (`list_id`, `list_question`, `list_description`, `list_answers_answer_a`, `list_answers_answer_b`, `list_answers_answer_c`, `list_answers_answer_d`, `list_answers_answer_e`, `list_answers_answer_f`, `list_multiple_correct_answers`, `list_correct_answers_answer_a_correct`, `list_correct_answers_answer_b_correct`, `list_correct_answers_answer_c_correct`, `list_correct_answers_answer_d_correct`, `list_correct_answers_answer_e_correct`, `list_correct_answers_answer_f_correct`, `list_correct_answer`, `list_explanation`, `list_tip`, `list_tags_name`, `list_category`, `list_difficulty`) VALUES
(390, 'MySQL supports different Character Sets, which command is used to display all of them?', NULL, 'SHOW;  ;', 'None Of The Mentioned', 'CHARACTER SET;', 'SHOW CHARACTER SET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'MySQL supports different Character Sets, which command is used to display all of them?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'false', 'true', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'MySQL supports different Character Sets, which command is used to display all of them?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(390, 'MySQL supports different Character Sets, which command is used to display all of them?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Easy'),
(415, 'Which declaration doesn\'t use the same number of bytes and consumption of bytes depending on the input data?', NULL, 'Varchar', 'None Of The Mentioned', 'Char', 'Both Varchar And Char', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'Which declaration doesn\'t use the same number of bytes and consumption of bytes depending on the input data?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'Which declaration doesn\'t use the same number of bytes and consumption of bytes depending on the input data?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(415, 'Which declaration doesn\'t use the same number of bytes and consumption of bytes depending on the input data?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(418, 'MySQL comes with a standard client libraries for:', NULL, 'C Only', 'PHP And C', 'Perl,  Java And C', 'Java Only', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'MySQL comes with a standard client libraries for:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'MySQL comes with a standard client libraries for:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(418, 'MySQL comes with a standard client libraries for:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(252, 'Which of the following is the best way to modify a table to allow null values?', NULL, 'ALTER TABLE table MODIFY column varchar(255) null', 'ALTER TABLE table MODIFY column VARCHAR(255)', 'ALTER TABLE table CHANGE column column type DEFAULT NULL', 'ALTER table MODIFY column varchar(255) null', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'Which of the following is the best way to modify a table to allow null values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'Which of the following is the best way to modify a table to allow null values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(252, 'Which of the following is the best way to modify a table to allow null values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Hard'),
(206, 'SQL (Structured Query Language) is:', NULL, 'imperative programming language', 'the language of structured queries', 'the language of queries by pattern', 'DBMS (DataBase Management System)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'SQL (Structured Query Language) is:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'SQL (Structured Query Language) is:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(206, 'SQL (Structured Query Language) is:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Easy'),
(210, 'DML is included into SQL language of:', NULL, 'managing users', 'managing transactions', 'description data', 'managing data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'DML is included into SQL language of:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'false', 'true', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'DML is included into SQL language of:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(210, 'DML is included into SQL language of:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(232, 'Which of the following statements are true about SQL injection attacks?', NULL, 'Wrapping all variables containing user input by a call to mysql_real_escape_string() makes the code immune to SQL injections.', 'Parametrized queries do not make code less vulnearable to SQL injections.', 'SQL injections are not possible, if only emulated prepared statements are used.', 'Usage of later versions of MySQL, validation, and explicit setting of the charset of user input are valid measures to decrease vulnerability to SQL injections.', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'Which of the following statements are true about SQL injection attacks?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'Which of the following statements are true about SQL injection attacks?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(232, 'Which of the following statements are true about SQL injection attacks?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Hard'),
(474, 'What type of join is needed when you wish to return rows that have matching values?', NULL, 'Equi-join', 'All of the mentioned.', 'Outer join', 'Natural join', 'None of the mentioned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'What type of join is needed when you wish to return rows that have matching values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'What type of join is needed when you wish to return rows that have matching values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(474, 'What type of join is needed when you wish to return rows that have matching values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Hard'),
(211, 'You have to sort records in the descending order by field \"rating\". Which query will be correct?', NULL, 'SORT BY \"rating\" DESC', 'SORT BY \"rating\"', 'ORDER BY \"rating\" DESC', 'ORDER BY \"rating\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'You have to sort records in the descending order by field \"rating\". Which query will be correct?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'You have to sort records in the descending order by field \"rating\". Which query will be correct?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(211, 'You have to sort records in the descending order by field \"rating\". Which query will be correct?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Easy'),
(387, 'Which function returns reference to Array of row values?', NULL, 'Fetch()', 'Fetchrow_arrayref()', 'Fetchrow_hashref()', 'Fetchrow_array()', 'Fetchrow_refarray()', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'Which function returns reference to Array of row values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'Which function returns reference to Array of row values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(387, 'Which function returns reference to Array of row values?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(385, 'To use \'mysqldbcopy\' which privileges are required on the source server?', NULL, 'CREATE', 'UPDATE', 'SELECT', 'INSERT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'To use \'mysqldbcopy\' which privileges are required on the source server?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'To use \'mysqldbcopy\' which privileges are required on the source server?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(385, 'To use \'mysqldbcopy\' which privileges are required on the source server?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(244, 'What is the default DATE field type format?', NULL, 'DD-MM-YYYY', 'YYYY-DD-MM', 'YYYY-MM-DD', 'MM-DD-YY', 'MMDDYYYY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'What is the default DATE field type format?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'What is the default DATE field type format?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(244, 'What is the default DATE field type format?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(440, 'What is the Commit command is used for?', NULL, 'To restore the old values', 'To recover the old table', 'To save the current transaction', 'To save the current table', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'What is the Commit command is used for?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'What is the Commit command is used for?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(440, 'What is the Commit command is used for?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Hard'),
(360, 'The query SELECT * FROM `movies` INSERT INTO `movies_archive`  will be executed without any errors.', NULL, 'True', 'False', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'The query SELECT * FROM `movies` INSERT INTO `movies_archive`  will be executed without any errors.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'The query SELECT * FROM `movies` INSERT INTO `movies_archive`  will be executed without any errors.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(360, 'The query SELECT * FROM `movies` INSERT INTO `movies_archive`  will be executed without any errors.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(248, 'Which of the following will raise MySQL\'s version of an error?', NULL, 'SIGNAL', 'RAISE', 'ERROR', 'None of these', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'Which of the following will raise MySQL\'s version of an error?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'Which of the following will raise MySQL\'s version of an error?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(248, 'Which of the following will raise MySQL\'s version of an error?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(437, 'What is called if a value shouldn\'t be greater than 100?', NULL, 'Integrity constraint', 'Feasible constraint', 'Over-defined constraint', 'Referential constraint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'What is called if a value shouldn\'t be greater than 100?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'What is called if a value shouldn\'t be greater than 100?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(437, 'What is called if a value shouldn\'t be greater than 100?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium'),
(338, 'What is the maximum size of a row in a MyISAM table?', NULL, 'No limit', 'OS specific', '65534', '128', '2’147’483’648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'What is the maximum size of a row in a MyISAM table?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'What is the maximum size of a row in a MyISAM table?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(338, 'What is the maximum size of a row in a MyISAM table?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Hard'),
(212, 'Which operator is not included in the data manipulation language (DML)?', NULL, 'UPDATE', 'DELETE', 'CREATE', 'SELECT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'Which operator is not included in the data manipulation language (DML)?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'Which operator is not included in the data manipulation language (DML)?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(212, 'Which operator is not included in the data manipulation language (DML)?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Easy'),
(356, 'The WHERE clause is mandatory when using the SELECT command', NULL, 'True', 'False', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'The WHERE clause is mandatory when using the SELECT command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'The WHERE clause is mandatory when using the SELECT command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(356, 'The WHERE clause is mandatory when using the SELECT command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Easy'),
(205, 'Which operator is included in the data manipulation language (DML)?', NULL, 'INSERT', 'GRANT', 'CREATE', 'DROP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Which operator is included in the data manipulation language (DML)?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Which operator is included in the data manipulation language (DML)?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, 'MySQL', NULL, NULL),
(205, 'Which operator is included in the data manipulation language (DML)?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, 'answer_a', NULL, NULL, NULL, 'SQL', 'Medium');

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
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsqltable`
--
ALTER TABLE `newsqltable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_answer`
--
ALTER TABLE `questions_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_answer_question_id_45884d67_fk_questions_question_id` (`question_id`);

--
-- Indexes for table `questions_question`
--
ALTER TABLE `questions_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_question_quiz_id_ab31444c_fk_quizzes_quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes_quiz`
--
ALTER TABLE `quizzes_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results_result`
--
ALTER TABLE `results_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_result_quiz_id_2609133d_fk_quizzes_quiz_id` (`quiz_id`),
  ADD KEY `results_result_user_id_ed3178a5_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `newsqltable`
--
ALTER TABLE `newsqltable`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `questions_answer`
--
ALTER TABLE `questions_answer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT for table `questions_question`
--
ALTER TABLE `questions_question`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `quizzes_quiz`
--
ALTER TABLE `quizzes_quiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `results_result`
--
ALTER TABLE `results_result`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
-- Constraints for table `questions_question`
--
ALTER TABLE `questions_question`
  ADD CONSTRAINT `questions_question_quiz_id_ab31444c_fk_quizzes_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes_quiz` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results_result`
--
ALTER TABLE `results_result`
  ADD CONSTRAINT `results_result_quiz_id_2609133d_fk_quizzes_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes_quiz` (`id`),
  ADD CONSTRAINT `results_result_user_id_ed3178a5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
