-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 19 2021 г., 19:27
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `darkcheck`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add bookmark', 1, 'add_bookmark'),
(2, 'Can change bookmark', 1, 'change_bookmark'),
(3, 'Can delete bookmark', 1, 'delete_bookmark'),
(4, 'Can view bookmark', 1, 'view_bookmark'),
(5, 'Can add pinned application', 2, 'add_pinnedapplication'),
(6, 'Can change pinned application', 2, 'change_pinnedapplication'),
(7, 'Can delete pinned application', 2, 'delete_pinnedapplication'),
(8, 'Can view pinned application', 2, 'view_pinnedapplication'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session'),
(33, 'Can add BlackКлиент', 9, 'add_blackclient'),
(34, 'Can change BlackКлиент', 9, 'change_blackclient'),
(35, 'Can delete BlackКлиент', 9, 'delete_blackclient'),
(36, 'Can view BlackКлиент', 9, 'view_blackclient'),
(37, 'Can add abonent profile', 10, 'add_abonentprofile'),
(38, 'Can change abonent profile', 10, 'change_abonentprofile'),
(39, 'Can delete abonent profile', 10, 'delete_abonentprofile'),
(40, 'Can view abonent profile', 10, 'view_abonentprofile'),
(41, 'Can add comment', 11, 'add_comment'),
(42, 'Can change comment', 11, 'change_comment'),
(43, 'Can delete comment', 11, 'delete_comment'),
(44, 'Can view comment', 11, 'view_comment'),
(45, 'Can add tags', 12, 'add_tags'),
(46, 'Can change tags', 12, 'change_tags'),
(47, 'Can delete tags', 12, 'delete_tags'),
(48, 'Can view tags', 12, 'view_tags');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$cM0aHHtco5aR$EDvWBb8oFl4OpP4jyL0IyKFcCcqf8eZALRsLv20Dfm4=', '2021-04-16 09:07:20.529972', 1, 'admin', '', '', 'admin@admin.ru', 1, 1, '2020-03-13 19:42:43.809651'),
(2, 'pbkdf2_sha256$150000$gWjGuLCKw18a$1/egXlRi3GZreY7T2qPf3aexGSH8px5ap9EEXtKgEi8=', '2021-04-16 09:22:47.799329', 0, 'user1', '', '', '', 0, 1, '2020-03-18 11:12:20.000000'),
(3, 'pbkdf2_sha256$150000$iNPEtj0VXMmJ$0Ydi+xlhTNjQbDJv0XRCcGNgVr395E9tCV8D6S71BqY=', '2020-03-30 14:03:13.401982', 0, 'salon_kras', '', '', '', 0, 1, '2020-03-30 14:01:35.830854');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `blacklistapp_abonentprofile`
--

CREATE TABLE `blacklistapp_abonentprofile` (
  `id` int(11) NOT NULL,
  `bio` longtext NOT NULL,
  `location` varchar(30) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `blacklistapp_abonentprofile`
--

INSERT INTO `blacklistapp_abonentprofile` (`id`, `bio`, `location`, `birth_date`, `user_id`) VALUES
(1, '', '', NULL, 1),
(2, 'BIO', 'RUSSIA', '2020-03-02', 2),
(3, 'ООО\"Орион\"', 'РФ', '2020-03-02', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `blacklistapp_blackclient`
--

CREATE TABLE `blacklistapp_blackclient` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `blacklistapp_blackclient`
--

INSERT INTO `blacklistapp_blackclient` (`id`, `name`, `phone`) VALUES
(1, 'Юрий', '+79778519389'),
(2, 'Иван', ''),
(4, 'Лариса', '+79771235467'),
(5, 'Жопа', ''),
(7, 'Алексей', '+79152653862'),
(9, 'Сергей Сяпович', '+79646449033'),
(11, 'FEAR', '+73434344543'),
(13, 'dcdced', '+79778513443'),
(15, 'Комбат', '+79162203634'),
(16, 'Kidok', '+76789876578'),
(17, 'Володимир', '+79265230855'),
(18, 'Влад', '+79261206180'),
(21, 'glo', '+79771234567');

-- --------------------------------------------------------

--
-- Структура таблицы `blacklistapp_blackclient_abonent_added`
--

CREATE TABLE `blacklistapp_blackclient_abonent_added` (
  `id` int(11) NOT NULL,
  `blackclient_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `blacklistapp_blackclient_abonent_added`
--

INSERT INTO `blacklistapp_blackclient_abonent_added` (`id`, `blackclient_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(4, 4, 1),
(5, 5, 1),
(7, 7, 1),
(15, 7, 2),
(20, 7, 3),
(9, 9, 1),
(18, 9, 2),
(11, 11, 1),
(13, 13, 2),
(16, 15, 1),
(17, 15, 2),
(19, 16, 3),
(21, 17, 1),
(22, 17, 2),
(23, 18, 1),
(24, 18, 2),
(27, 21, 1),
(28, 21, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `blacklistapp_blackclient_tags_added`
--

CREATE TABLE `blacklistapp_blackclient_tags_added` (
  `id` int(11) NOT NULL,
  `blackclient_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `blacklistapp_blackclient_tags_added`
--

INSERT INTO `blacklistapp_blackclient_tags_added` (`id`, `blackclient_id`, `tags_id`) VALUES
(19, 1, 1),
(20, 1, 4),
(21, 1, 5),
(22, 1, 6),
(15, 7, 2),
(17, 7, 3),
(16, 7, 4),
(18, 7, 5),
(29, 9, 1),
(26, 9, 3),
(25, 9, 4),
(27, 9, 5),
(28, 9, 6),
(4, 11, 1),
(5, 11, 2),
(6, 11, 6),
(10, 13, 5),
(11, 13, 6),
(23, 15, 1),
(24, 15, 5),
(30, 16, 2),
(31, 17, 1),
(32, 17, 2),
(33, 17, 5),
(34, 17, 6),
(38, 18, 1),
(35, 18, 2),
(36, 18, 4),
(37, 18, 6),
(45, 21, 4),
(47, 21, 5),
(46, 21, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `blacklistapp_comment`
--

CREATE TABLE `blacklistapp_comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `abonent_added_id` int(11) NOT NULL,
  `bclient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `blacklistapp_comment`
--

INSERT INTO `blacklistapp_comment` (`id`, `comment`, `abonent_added_id`, `bclient_id`) VALUES
(1, 'Кидает, не платит', 1, 1),
(2, 'Мудак', 1, 2),
(4, 'Пиписа', 1, 4),
(5, 'прлорпсапорлод', 1, 5),
(7, 'Юрат', 1, 7),
(9, 'Чувак', 1, 9),
(11, 'FCRFDGTFR', 1, 11),
(13, 'edxedxedxe', 2, 13),
(15, 'Кидает, извращенец, кричит, не приходит и не платит! Не работайте с ним!', 2, 7),
(16, 'Козлина!', 1, 1),
(17, 'Комбат батяня комбат', 1, 15),
(18, 'lhjlkj', 2, 15),
(19, 'Хамит, кидает', 1, 9),
(20, 'Изваращенец', 2, 9),
(21, '.ghgjkl;jbj', 3, 16),
(22, 'Плохой человек', 3, 7),
(23, 'какашка', 1, 17),
(24, 'zdfsdfsdfsfse', 2, 17),
(25, 'Красаучиг', 1, 18),
(26, 'Хер с горы', 2, 18),
(28, 'Хамит и не платит', 1, 1),
(30, 'плохой и хомло', 1, 21),
(31, 'hhjio', 2, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `blacklistapp_tags`
--

CREATE TABLE `blacklistapp_tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `blacklistapp_tags`
--

INSERT INTO `blacklistapp_tags` (`id`, `tag_name`) VALUES
(1, 'дерется'),
(2, 'извращенец'),
(4, 'кидает'),
(3, 'не_приходит'),
(5, 'скандалист'),
(6, 'хам');

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-17 08:53:25.498684', '1', 'дерется', 1, '[{\"added\": {}}]', 12, 1),
(2, '2020-03-17 08:53:29.300616', '2', 'извращенец', 1, '[{\"added\": {}}]', 12, 1),
(3, '2020-03-17 08:53:32.903908', '3', 'не_приходит', 1, '[{\"added\": {}}]', 12, 1),
(4, '2020-03-17 08:53:36.991662', '4', 'кидает', 1, '[{\"added\": {}}]', 12, 1),
(5, '2020-03-17 08:53:43.185403', '5', 'скандалист', 1, '[{\"added\": {}}]', 12, 1),
(6, '2020-03-17 08:53:49.736897', '6', 'хам', 1, '[{\"added\": {}}]', 12, 1),
(7, '2020-03-18 11:12:21.015613', '2', 'user1', 1, '[{\"added\": {}}]', 6, 1),
(8, '2020-03-18 11:12:49.711886', '2', 'AbonentProfile object (2)', 2, '[{\"changed\": {\"fields\": [\"bio\", \"location\", \"birth_date\"]}}]', 10, 1),
(9, '2020-03-30 14:01:36.215576', '3', 'salon_kras', 1, '[{\"added\": {}}]', 6, 1),
(10, '2020-03-30 14:02:36.690389', '3', 'AbonentProfile object (3)', 2, '[{\"changed\": {\"fields\": [\"bio\", \"location\", \"birth_date\"]}}]', 10, 1),
(11, '2021-04-16 08:33:23.529467', '3', '+7 234 567-89-09', 3, '', 9, 1),
(12, '2021-04-16 08:33:23.535481', '6', '+72224445566', 3, '', 9, 1),
(13, '2021-04-16 08:33:23.543457', '20', '+77656457654', 3, '', 9, 1),
(14, '2021-04-16 08:33:23.548408', '14', '+79152765092', 3, '', 9, 1),
(15, '2021-04-16 08:33:23.560377', '19', '+79154558206', 3, '', 9, 1),
(16, '2021-04-16 08:33:23.564488', '8', '+79252413006', 3, '', 9, 1),
(17, '2021-04-16 08:33:46.928576', '12', '+79764553862', 3, '', 9, 1),
(18, '2021-04-16 08:33:46.933536', '10', '+79764687692', 3, '', 9, 1),
(19, '2021-04-16 09:08:23.429707', '2', 'user1', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 1),
(20, '2021-04-16 09:11:30.094687', '2', 'user1', 2, '[]', 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'auth', 'user'),
(10, 'blacklistApp', 'abonentprofile'),
(9, 'blacklistApp', 'blackclient'),
(11, 'blacklistApp', 'comment'),
(12, 'blacklistApp', 'tags'),
(7, 'contenttypes', 'contenttype'),
(1, 'jet', 'bookmark'),
(2, 'jet', 'pinnedapplication'),
(8, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-13 19:39:38.427124'),
(2, 'auth', '0001_initial', '2020-03-13 19:39:38.614623'),
(3, 'admin', '0001_initial', '2020-03-13 19:39:39.169140'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-13 19:39:39.299817'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-13 19:39:39.307769'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-13 19:39:39.404511'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-13 19:39:39.491278'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-13 19:39:39.510227'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-13 19:39:39.519204'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-13 19:39:39.593008'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-13 19:39:39.596000'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-13 19:39:39.604973'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-13 19:39:39.624920'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-13 19:39:39.644880'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-13 19:39:39.662819'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-13 19:39:39.673791'),
(17, 'blacklistApp', '0001_initial', '2020-03-13 19:39:39.705704'),
(18, 'blacklistApp', '0002_auto_20200305_1545', '2020-03-13 19:39:39.773522'),
(19, 'blacklistApp', '0003_blackclient_abonentthatadded', '2020-03-13 19:39:39.859293'),
(20, 'blacklistApp', '0004_auto_20200306_1926', '2020-03-13 19:39:39.995928'),
(21, 'blacklistApp', '0005_auto_20200306_1928', '2020-03-13 19:39:40.201378'),
(22, 'blacklistApp', '0006_auto_20200306_1932', '2020-03-13 19:39:40.578370'),
(23, 'blacklistApp', '0007_auto_20200310_0518', '2020-03-13 19:39:40.703037'),
(24, 'blacklistApp', '0008_auto_20200310_0520', '2020-03-13 19:39:40.826705'),
(25, 'blacklistApp', '0009_comment_bclient', '2020-03-13 19:39:40.979297'),
(26, 'blacklistApp', '0010_auto_20200312_1251', '2020-03-13 19:39:41.100972'),
(27, 'jet', '0001_initial', '2020-03-13 19:39:41.371248'),
(28, 'jet', '0002_delete_userdashboardmodule', '2020-03-13 19:39:41.389201'),
(29, 'sessions', '0001_initial', '2020-03-13 19:39:41.420118');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9ezo8xi323ve9m50ngbu3qtlugxlxr7a', 'MDc3MzM5MjdjMzE0ZmU0Yjc3MWM0NGJiMzEzZTQ4ZGE5NTlmNDk2ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2M2Q3ZTA4NDlmOGM4MDBjYzgwNjYxNWM0MDgyOTdlYTlkZDczNDMzIn0=', '2020-04-13 14:09:13.391330'),
('a34jis4x2qxaody2vjoxf78sib7oua4a', 'YzZkMWQ5MGZlZmRjNTRhMDkxYzc0ODUxYjFkMzUxMmUzMDVmYmMyYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzBkZGNlNjI2NTllMmUwMjMzNjdjM2JmYmE5ODE1YTgzZWM5NTQwIn0=', '2020-06-28 16:52:51.824899'),
('b7y3elvcm5sqtvlgnlvedcrtpo0bf0us', 'YzZkMWQ5MGZlZmRjNTRhMDkxYzc0ODUxYjFkMzUxMmUzMDVmYmMyYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzBkZGNlNjI2NTllMmUwMjMzNjdjM2JmYmE5ODE1YTgzZWM5NTQwIn0=', '2020-06-28 14:08:30.711460'),
('cqntzcm1r64rw2de5ziwrfwagl5w2vph', 'MDc3MzM5MjdjMzE0ZmU0Yjc3MWM0NGJiMzEzZTQ4ZGE5NTlmNDk2ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2M2Q3ZTA4NDlmOGM4MDBjYzgwNjYxNWM0MDgyOTdlYTlkZDczNDMzIn0=', '2020-04-05 19:42:33.289778'),
('xbcpol0ofzuwzczo479b9ylvv4noy39g', 'NDdjNTM2OTdkZDIxOWZjOTA0MzI3NzQzNzA4MjUzZjZiOTk0YjAzMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYTc1YzY5NTI0MjUxNzg0Y2EyNzBmZGM4MjlmZTdlMDBiZGM1YWJmIn0=', '2021-04-30 09:22:47.820274');

-- --------------------------------------------------------

--
-- Структура таблицы `jet_bookmark`
--

CREATE TABLE `jet_bookmark` (
  `id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jet_pinnedapplication`
--

CREATE TABLE `jet_pinnedapplication` (
  `id` int(11) NOT NULL,
  `app_label` varchar(255) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `blacklistapp_abonentprofile`
--
ALTER TABLE `blacklistapp_abonentprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Индексы таблицы `blacklistapp_blackclient`
--
ALTER TABLE `blacklistapp_blackclient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blacklistApp_blackclient_name_cdea0d70` (`name`),
  ADD KEY `blacklistApp_blackclient_phone_e9d8b692` (`phone`);

--
-- Индексы таблицы `blacklistapp_blackclient_abonent_added`
--
ALTER TABLE `blacklistapp_blackclient_abonent_added`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blacklistApp_blackclient_blackclient_id_user_id_a9601f85_uniq` (`blackclient_id`,`user_id`),
  ADD KEY `blacklistApp_blackcl_user_id_e27e8cb4_fk_auth_user` (`user_id`);

--
-- Индексы таблицы `blacklistapp_blackclient_tags_added`
--
ALTER TABLE `blacklistapp_blackclient_tags_added`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blacklistApp_blackclient_blackclient_id_tags_id_e3ccb690_uniq` (`blackclient_id`,`tags_id`),
  ADD KEY `blacklistApp_blackcl_tags_id_dd00d261_fk_blacklist` (`tags_id`);

--
-- Индексы таблицы `blacklistapp_comment`
--
ALTER TABLE `blacklistapp_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blacklistApp_comment_comment_ff9478ec` (`comment`),
  ADD KEY `blacklistApp_comment_abonent_added_id_b6b67a74` (`abonent_added_id`),
  ADD KEY `blacklistApp_comment_bclient_id_3c780159_fk_blacklist` (`bclient_id`);

--
-- Индексы таблицы `blacklistapp_tags`
--
ALTER TABLE `blacklistapp_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blacklistApp_tags_tag_name_5d73e5e3` (`tag_name`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `blacklistapp_abonentprofile`
--
ALTER TABLE `blacklistapp_abonentprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `blacklistapp_blackclient`
--
ALTER TABLE `blacklistapp_blackclient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `blacklistapp_blackclient_abonent_added`
--
ALTER TABLE `blacklistapp_blackclient_abonent_added`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `blacklistapp_blackclient_tags_added`
--
ALTER TABLE `blacklistapp_blackclient_tags_added`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `blacklistapp_comment`
--
ALTER TABLE `blacklistapp_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `blacklistapp_tags`
--
ALTER TABLE `blacklistapp_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `blacklistapp_abonentprofile`
--
ALTER TABLE `blacklistapp_abonentprofile`
  ADD CONSTRAINT `blacklistApp_abonentprofile_user_id_5f094e71_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `blacklistapp_blackclient_abonent_added`
--
ALTER TABLE `blacklistapp_blackclient_abonent_added`
  ADD CONSTRAINT `blacklistApp_blackcl_blackclient_id_4357aa0b_fk_blacklist` FOREIGN KEY (`blackclient_id`) REFERENCES `blacklistapp_blackclient` (`id`),
  ADD CONSTRAINT `blacklistApp_blackcl_user_id_e27e8cb4_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `blacklistapp_blackclient_tags_added`
--
ALTER TABLE `blacklistapp_blackclient_tags_added`
  ADD CONSTRAINT `blacklistApp_blackcl_blackclient_id_8ff2089a_fk_blacklist` FOREIGN KEY (`blackclient_id`) REFERENCES `blacklistapp_blackclient` (`id`),
  ADD CONSTRAINT `blacklistApp_blackcl_tags_id_dd00d261_fk_blacklist` FOREIGN KEY (`tags_id`) REFERENCES `blacklistapp_tags` (`id`);

--
-- Ограничения внешнего ключа таблицы `blacklistapp_comment`
--
ALTER TABLE `blacklistapp_comment`
  ADD CONSTRAINT `blacklistApp_comment_abonent_added_id_b6b67a74_fk_auth_user_id` FOREIGN KEY (`abonent_added_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `blacklistApp_comment_bclient_id_3c780159_fk_blacklist` FOREIGN KEY (`bclient_id`) REFERENCES `blacklistapp_blackclient` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
