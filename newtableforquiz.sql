-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 08:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

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
(2, 'pbkdf2_sha256$260000$bRZdMoHL9bIYCdd9Zg8Lru$7JPw9XALzX25djXHMrDPg8YddLMDDoyPeOel5YX0iB8=', '2021-10-23 12:18:12.211734', 1, 'kakeru98', '', '', '', 1, 1, '2021-10-23 12:17:46.617577');

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
(8, '2021-09-04 09:47:28.178328', '2', 'Basic-Test', 2, '[{\"changed\": {\"fields\": [\"Difficulty\"]}}]', 1, 1);

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
(14, 'I became so numb!', 0, 4);

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
(205, 'Which operator is included in the data manipulation language (DML)?', 3),
(206, 'SQL (Structured Query Language) is:', 3),
(210, 'DML is included into SQL language of:', 3),
(211, 'You have to sort records in the descending order by field \"rating\". Which query will be correct?', 3),
(212, 'Which operator is not included in the data manipulation language (DML)?', 3),
(232, 'Which of the following statements are true about SQL injection attacks?', 3),
(244, 'What is the default DATE field type format?', 3),
(248, 'Which of the following will raise MySQL\'s version of an error?', 3),
(252, 'Which of the following is the best way to modify a table to allow null values?', 3),
(338, 'What is the maximum size of a row in a MyISAM table?', 3),
(356, 'The WHERE clause is mandatory when using the SELECT command', 3),
(360, 'The query SELECT * FROM `movies` INSERT INTO `movies_archive`  will be executed without any errors.', 3),
(385, 'To use \'mysqldbcopy\' which privileges are required on the source server?', 3),
(387, 'Which function returns reference to Array of row values?', 3),
(390, 'MySQL supports different Character Sets, which command is used to display all of them?', 3),
(415, 'Which declaration doesn\'t use the same number of bytes and consumption of bytes depending on the input data?', 3),
(418, 'MySQL comes with a standard client libraries for:', 3),
(437, 'What is called if a value shouldn\'t be greater than 100?', 3),
(440, 'What is the Commit command is used for?', 3),
(474, 'What type of join is needed when you wish to return rows that have matching values?', 3);

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
  `difficulty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizzes_quiz`
--

INSERT INTO `quizzes_quiz` (`id`, `name`, `topic`, `number_of_questions`, `time`, `required_score_to_pass`, `difficulty`) VALUES
(1, 'general knowledge', 'Django', 2, 2, 50, 2),
(2, 'Basic', 'Test', 2, 2, 50, 2),
(3, 'Another Basic', 'SQL ', 20, 10, 50, 2);

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
(5, 0, 3, 1),
(6, 0, 1, 2),
(7, 100, 1, 2),
(8, 100, 1, 2),
(9, 50, 1, 2);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `questions_question`
--
ALTER TABLE `questions_question`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `quizzes_quiz`
--
ALTER TABLE `quizzes_quiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `results_result`
--
ALTER TABLE `results_result`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Constraints for table `questions_answer`
--
ALTER TABLE `questions_answer`
  ADD CONSTRAINT `questions_answer_question_id_45884d67_fk_questions_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions_question` (`id`);

--
-- Constraints for table `questions_question`
--
ALTER TABLE `questions_question`
  ADD CONSTRAINT `questions_question_quiz_id_ab31444c_fk_quizzes_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes_quiz` (`id`);

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
