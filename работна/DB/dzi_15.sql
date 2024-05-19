-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 19 май 2024 в 21:03
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `dzi_15`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'ADMIN'),
(1, 'STUDENT');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36);

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_permission`
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
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add issued book', 8, 'add_issuedbook'),
(30, 'Can change issued book', 8, 'change_issuedbook'),
(31, 'Can delete issued book', 8, 'delete_issuedbook'),
(32, 'Can view issued book', 8, 'view_issuedbook'),
(33, 'Can add student extra', 9, 'add_studentextra'),
(34, 'Can change student extra', 9, 'change_studentextra'),
(35, 'Can delete student extra', 9, 'delete_studentextra'),
(36, 'Can view student extra', 9, 'view_studentextra');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
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

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$aQD9jRJ7dtkLqj6VC5dpiI$0iTg4qgi9Xrfl5jN7IMTQHCQanFtYbz6rrBK/Xtoqss=', '2024-05-19 18:46:52.136233', 1, 'admin', '', '', '', 1, 1, '2024-05-19 15:59:45.000000'),
(2, 'pbkdf2_sha256$600000$iUF8t0GiiEGY9NYgE22mtP$e+4ZtaMagYcPl3aEnvf0MdmVQ4f7ebVB5sjzDRxVMhU=', '2024-05-19 18:53:00.907107', 0, 'libuser1', 'Стоян', 'Стоянов', '', 0, 1, '2024-05-19 16:03:29.410253');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 1, 2),
(1, 2, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
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

--
-- Схема на данните от таблица `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-19 16:14:57.976168', '2', 'ADMIN', 1, '[{\"added\": {}}]', 3, 1),
(2, '2024-05-19 16:15:10.882920', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(3, '2024-05-19 17:28:47.742188', '2', 'Под игото[1234]', 3, '', 7, 1),
(4, '2024-05-19 17:28:56.635722', '1', 'Под игото[1234]', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f\"]}}]', 7, 1),
(5, '2024-05-19 17:30:05.652058', '3', 'учебник по математи за 12 клас[99999]', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-05-19 17:31:07.753099', '4', 'Хари Потър[233222]', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'book'),
(8, 'main', 'issuedbook'),
(9, 'main', 'studentextra'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-19 15:59:11.638870'),
(2, 'auth', '0001_initial', '2024-05-19 15:59:12.505418'),
(3, 'admin', '0001_initial', '2024-05-19 15:59:12.685510'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-19 15:59:12.695525'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-19 15:59:12.702509'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-19 15:59:12.803429'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-19 15:59:12.879476'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-19 15:59:12.897968'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-19 15:59:12.907611'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-19 15:59:12.982482'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-19 15:59:12.986479'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-19 15:59:12.996525'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-19 15:59:13.013923'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-19 15:59:13.031424'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-19 15:59:13.049738'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-19 15:59:13.058754'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-19 15:59:13.074965'),
(18, 'main', '0001_initial', '2024-05-19 15:59:13.232067'),
(19, 'sessions', '0001_initial', '2024-05-19 15:59:13.288250'),
(20, 'main', '0002_issuedbook_book_alter_book_author_and_more', '2024-05-19 17:15:06.768397'),
(21, 'main', '0003_alter_book_options_alter_issuedbook_options_and_more', '2024-05-19 18:02:14.231811'),
(22, 'main', '0004_remove_studentextra_branch_and_more', '2024-05-19 18:05:30.988923');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `main_book`
--

DROP TABLE IF EXISTS `main_book`;
CREATE TABLE `main_book` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `isbn` int(10) UNSIGNED NOT NULL CHECK (`isbn` >= 0),
  `author` varchar(40) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_book`
--

INSERT INTO `main_book` (`id`, `name`, `isbn`, `author`, `category`) VALUES
(1, 'Под игото', 1234, 'Иван Вазов', 'образование'),
(3, 'учебник по математи за 12 клас', 99999, 'колектив', 'образование'),
(4, 'Хари Потър', 233222, 'Джоан Роулинг', 'фентъзи');

-- --------------------------------------------------------

--
-- Структура на таблица `main_issuedbook`
--

DROP TABLE IF EXISTS `main_issuedbook`;
CREATE TABLE `main_issuedbook` (
  `id` bigint(20) NOT NULL,
  `enrollment` varchar(30) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `issuedate` date NOT NULL,
  `expirydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_issuedbook`
--

INSERT INTO `main_issuedbook` (`id`, `enrollment`, `isbn`, `issuedate`, `expirydate`) VALUES
(1, 'asd', '1234', '2024-05-19', '2024-06-03'),
(2, 'asd', '1234', '2024-05-19', '2024-06-03'),
(3, 'asd', '99999', '2024-05-19', '2024-06-03');

-- --------------------------------------------------------

--
-- Структура на таблица `main_studentextra`
--

DROP TABLE IF EXISTS `main_studentextra`;
CREATE TABLE `main_studentextra` (
  `id` bigint(20) NOT NULL,
  `enrollment` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_studentextra`
--

INSERT INTO `main_studentextra` (`id`, `enrollment`, `user_id`) VALUES
(1, 'asd', 2);

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индекси за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индекси за таблица `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индекси за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индекси за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индекси за таблица `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индекси за таблица `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индекси за таблица `main_book`
--
ALTER TABLE `main_book`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_issuedbook`
--
ALTER TABLE `main_issuedbook`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_studentextra`
--
ALTER TABLE `main_studentextra`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `main_book`
--
ALTER TABLE `main_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_issuedbook`
--
ALTER TABLE `main_issuedbook`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_studentextra`
--
ALTER TABLE `main_studentextra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_studentextra`
--
ALTER TABLE `main_studentextra`
  ADD CONSTRAINT `main_studentextra_user_id_d6bd2771_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
