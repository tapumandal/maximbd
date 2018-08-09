-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2018 at 06:30 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.1.16-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mxp_kmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `attach__types`
--

CREATE TABLE `attach__types` (
  `AttachTypeID` int(10) UNSIGNED NOT NULL,
  `AttachType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AllowExtensions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_04_092437_create_org__categories_table', 1),
(4, '2018_04_04_092548_create_task__categories_table', 1),
(5, '2018_04_04_092601_create_user__types_table', 1),
(6, '2018_04_04_092611_create_attach__types_table', 1),
(7, '2018_04_04_092622_create_org_cat__dept__suggests_table', 1),
(8, '2018_04_04_092631_create_org__tasks__lists_table', 1),
(9, '2018_04_04_092643_create_org__lists_table', 1),
(10, '2018_04_04_092700_create_user__lists_table', 1),
(11, '2018_04_04_092729_create_user__logins_table', 1),
(12, '2018_04_04_092739_create_task__assigned__org__lists_table', 1),
(13, '2018_04_04_092748_create_user__org__controls_table', 1),
(14, '2018_04_04_092802_create_task__assigned__users_table', 1),
(15, '2018_04_04_092812_create_tasks__communications_table', 1),
(16, '2018_04_04_092822_create_user__task__reads_table', 1),
(17, '2018_04_04_092830_create_task__histories_table', 1),
(18, '2018_04_13_091206_update_user__lists_table', 1),
(19, '2018_04_21_065430_add_remember_token_column_user_list_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `org_cat__dept__suggests`
--

CREATE TABLE `org_cat__dept__suggests` (
  `DeptID` int(10) UNSIGNED NOT NULL,
  `OrgCatID` int(11) NOT NULL,
  `DeptName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeptDesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `org_cat__dept__suggests`
--

INSERT INTO `org_cat__dept__suggests` (`DeptID`, `OrgCatID`, `DeptName`, `DeptDesc`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dept One', 'Desc One', '2018-04-18 03:26:41', '2018-04-18 03:26:41'),
(2, 2, 'Department two', 'Two Description', '2018-04-18 05:18:10', '2018-04-18 05:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `org__categories`
--

CREATE TABLE `org__categories` (
  `OrgCatID` int(10) UNSIGNED NOT NULL,
  `OrgCat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CateDesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `org__categories`
--

INSERT INTO `org__categories` (`OrgCatID`, `OrgCat`, `CateDesc`, `created_at`, `updated_at`) VALUES
(1, 'Category One', 'Description One', '2018-04-18 03:26:06', '2018-04-18 03:26:06'),
(2, 'Category Two', 'Two Description', '2018-04-18 05:17:48', '2018-04-18 05:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `org__lists`
--

CREATE TABLE `org__lists` (
  `OrgID` int(10) UNSIGNED NOT NULL,
  `OrgCatID` int(11) NOT NULL,
  `ParentOrgID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContactInfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DetailInfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActiveFrom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActiveTo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `org__lists`
--

INSERT INTO `org__lists` (`OrgID`, `OrgCatID`, `ParentOrgID`, `OrgName`, `ContactInfo`, `DetailInfo`, `IsActive`, `ActiveFrom`, `ActiveTo`, `created_at`, `updated_at`) VALUES
(1, 1, '0', 'Org One', 'Con Info', 'Detail Info', '0', 'Sunday 01 April 2018', 'Monday 30 April 2018', '2018-04-18 03:27:15', '2018-04-18 03:27:15'),
(2, 1, '1', 'org 2', 'con2', 'details 2', '1', 'Thursday 05 April 2018', 'Saturday 28 April 2018', '2018-04-18 04:53:23', '2018-04-18 04:53:23'),
(3, 2, '0', 'Organization test', 'Dhaka Bangladesh', 'Details information is missing', '1', 'Tuesday 17 April 2018', 'Friday 22 May 2020', '2018-04-18 05:19:02', '2018-04-18 05:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `org__tasks__lists`
--

CREATE TABLE `org__tasks__lists` (
  `TaskID` int(10) UNSIGNED NOT NULL,
  `OrgID` int(11) DEFAULT NULL,
  `TaskCatID` int(11) DEFAULT NULL,
  `TaskName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TaskDesc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentTaskID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EndDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsCompleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActiveFrom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActiveTo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreateTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreateUserID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreateLoginID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsDeleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeleteTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeleteUserID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeleteLoginID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsAutoCompleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `org__tasks__lists`
--

INSERT INTO `org__tasks__lists` (`TaskID`, `OrgID`, `TaskCatID`, `TaskName`, `TaskDesc`, `ParentTaskID`, `StartDate`, `EndDate`, `IsCompleted`, `IsActive`, `ActiveFrom`, `ActiveTo`, `CreateTime`, `CreateUserID`, `CreateLoginID`, `IsDeleted`, `DeleteTime`, `DeleteUserID`, `DeleteLoginID`, `Priority`, `IsAutoCompleted`, `created_at`, `updated_at`) VALUES
(1, NULL, 4, 'First task', 'Second Category Task', '0', 'Wednesday 25 April 2018', 'Sunday 20 May 2018', '0', '1', 'Tuesday 24 April 2018', 'Friday 25 May 2018', '2018-04-19 11:17:28', '1', '3', '0', NULL, NULL, NULL, '7', '0', '2018-04-19 05:17:28', '2018-04-19 05:17:28'),
(2, NULL, 4, 'First taskSecond', 'Second Category Task', '0', 'Wednesday 25 April 2018', 'Sunday 20 May 2018', '0', '1', 'Tuesday 24 April 2018', 'Friday 25 May 2018', '2018-04-19 11:36:02', '1', '3', '0', NULL, NULL, NULL, '7', '0', '2018-04-19 05:36:02', '2018-04-19 05:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks__communications`
--

CREATE TABLE `tasks__communications` (
  `CommID` int(10) UNSIGNED NOT NULL,
  `TaskID` int(11) NOT NULL,
  `OrgID` int(11) NOT NULL,
  `CommText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttachTypeID` int(11) NOT NULL,
  `AttachData` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttachExt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreateTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreateUserID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreateLoginID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsDeleted` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeleteTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeleteUserID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeleteLoginID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task__assigned__org__lists`
--

CREATE TABLE `task__assigned__org__lists` (
  `AssignOrgID` int(10) UNSIGNED NOT NULL,
  `TaskID` int(11) NOT NULL,
  `OrgID` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task__assigned__org__lists`
--

INSERT INTO `task__assigned__org__lists` (`AssignOrgID`, `TaskID`, `OrgID`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-04-20 01:24:59', '2018-04-20 01:24:59'),
(2, 3, 2, '2018-04-20 01:25:12', '2018-04-20 01:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `task__assigned__users`
--

CREATE TABLE `task__assigned__users` (
  `AssignUserID` int(10) UNSIGNED NOT NULL,
  `TaskID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `IsAknowledge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task__assigned__users`
--

INSERT INTO `task__assigned__users` (`AssignUserID`, `TaskID`, `UserID`, `IsAknowledge`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0', '2018-04-20 01:24:59', '2018-04-20 01:24:59'),
(2, 2, 1, '0', '2018-04-20 01:25:12', '2018-04-20 01:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `task__categories`
--

CREATE TABLE `task__categories` (
  `TaskCatID` int(10) UNSIGNED NOT NULL,
  `TaskCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task__categories`
--

INSERT INTO `task__categories` (`TaskCatID`, `TaskCategory`, `created_at`, `updated_at`) VALUES
(1, 'asdad', '2018-04-18 06:14:18', '2018-04-18 06:14:18'),
(2, 'Task Category', '2018-04-18 06:21:36', '2018-04-18 06:21:36'),
(3, 'New Category', '2018-04-18 06:21:47', '2018-04-18 06:21:47'),
(4, 'Task Category 2', '2018-04-19 03:30:09', '2018-04-19 03:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `task__histories`
--

CREATE TABLE `task__histories` (
  `TaskHisID` int(10) UNSIGNED NOT NULL,
  `TaskID` int(11) NOT NULL,
  `ActionTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActionUserID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActionLoginID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActionType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastValue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CurrentValue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user__lists`
--

CREATE TABLE `user__lists` (
  `UserID` int(10) UNSIGNED NOT NULL,
  `UserTypeID` int(11) DEFAULT NULL,
  `OrgID` int(11) DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EncryptKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PasswordEncrypted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActiveFrom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActiveTo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewExtTask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanCreateUser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanCreateTask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanAssignTask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanDeleteTask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPassChangeNeed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user__lists`
--

INSERT INTO `user__lists` (`UserID`, `UserTypeID`, `OrgID`, `Name`, `email`, `EncryptKey`, `PasswordEncrypted`, `remember_token`, `IsActive`, `ActiveFrom`, `ActiveTo`, `Designation`, `CanViewExtTask`, `CanCreateUser`, `CanCreateTask`, `CanAssignTask`, `CanDeleteTask`, `IsPassChangeNeed`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Tapu Mandal', 'test1@mail.como', NULL, '$2y$10$MLYeoO8n2ltBgVd1XMN/SOy06OU1UGH6jGVg3gykRTMtbfHuweE2G', 'dPQ5d5r26LgQ4sHuAVTKbPJ8l3sOzutFrWYSyapGemFNjwwGxJwDlxUjSoWr', '1', NULL, NULL, 'Jr Exe', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 03:24:41', '2018-04-18 03:24:41'),
(2, 2, NULL, 'Org User', 'orguser@mail.com', NULL, '$2y$10$Gz7XEzeQu63xOh3y/c/PCOKheL/VdIdpJTw4KEy3ulj3zdAyYLP1i', '', '1', NULL, NULL, 'Senior', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-21 00:20:08', '2018-04-21 00:20:08'),
(3, 2, 1, 'Org User 2', 'org2user@mail.com', NULL, '$2y$10$AGT9fT.KzzsoYd6ODHYKy.GNn08naulUR7Dryy98BfgpryBVZKGOq', '', '1', NULL, NULL, 'jr Tester', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-21 00:22:59', '2018-04-21 00:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `user__logins`
--

CREATE TABLE `user__logins` (
  `LoginID` int(10) UNSIGNED NOT NULL,
  `UserID` int(11) NOT NULL,
  `LoginTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IPAddr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeviceInfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TokenInfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user__logins`
--

INSERT INTO `user__logins` (`LoginID`, `UserID`, `LoginTime`, `IPAddr`, `DeviceInfo`, `TokenInfo`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-19 10:15:51', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-19 04:15:51', '2018-04-19 04:15:51'),
(2, 1, '2018-04-19 10:31:14', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-19 04:31:14', '2018-04-19 04:31:14'),
(3, 1, '2018-04-19 10:54:39', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-19 04:54:39', '2018-04-19 04:54:39'),
(4, 1, '2018-04-20 05:19:29', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-19 23:19:29', '2018-04-19 23:19:29'),
(5, 1, '2018-04-20 09:41:09', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-20 03:41:09', '2018-04-20 03:41:09'),
(6, 1, '2018-04-21 06:13:19', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:13:19', '2018-04-21 00:13:19'),
(7, 1, '2018-04-21 06:28:37', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:28:37', '2018-04-21 00:28:37'),
(8, 1, '2018-04-21 06:31:01', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:31:01', '2018-04-21 00:31:01'),
(9, 1, '2018-04-21 06:33:14', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:33:14', '2018-04-21 00:33:14'),
(10, 1, '2018-04-21 06:35:18', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:35:18', '2018-04-21 00:35:18'),
(11, 1, '2018-04-21 06:45:30', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:45:30', '2018-04-21 00:45:30'),
(12, 3, '2018-04-21 06:45:57', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:45:57', '2018-04-21 00:45:57'),
(13, 1, '2018-04-21 06:46:06', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:46:06', '2018-04-21 00:46:06'),
(14, 1, '2018-04-21 06:49:47', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:49:47', '2018-04-21 00:49:47'),
(15, 3, '2018-04-21 06:49:59', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:49:59', '2018-04-21 00:49:59'),
(16, 1, '2018-04-21 06:58:28', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 00:58:28', '2018-04-21 00:58:28'),
(17, 1, '2018-04-21 10:00:50', 'Not Set Yet', 'Not Set Yet', 'Not Set Yet', '2018-04-21 04:00:50', '2018-04-21 04:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `user__org__controls`
--

CREATE TABLE `user__org__controls` (
  `UserOrgID` int(10) UNSIGNED NOT NULL,
  `UserID` int(11) NOT NULL,
  `OrgID` int(11) NOT NULL,
  `IsActive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActiveFrom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActiveTo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user__task__reads`
--

CREATE TABLE `user__task__reads` (
  `ReadID` int(10) UNSIGNED NOT NULL,
  `UserID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `LastReadTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user__types`
--

CREATE TABLE `user__types` (
  `UserTypeID` int(10) UNSIGNED NOT NULL,
  `UserType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user__types`
--

INSERT INTO `user__types` (`UserTypeID`, `UserType`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', NULL, NULL),
(2, 'Tester', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attach__types`
--
ALTER TABLE `attach__types`
  ADD PRIMARY KEY (`AttachTypeID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_cat__dept__suggests`
--
ALTER TABLE `org_cat__dept__suggests`
  ADD PRIMARY KEY (`DeptID`);

--
-- Indexes for table `org__categories`
--
ALTER TABLE `org__categories`
  ADD PRIMARY KEY (`OrgCatID`);

--
-- Indexes for table `org__lists`
--
ALTER TABLE `org__lists`
  ADD PRIMARY KEY (`OrgID`);

--
-- Indexes for table `org__tasks__lists`
--
ALTER TABLE `org__tasks__lists`
  ADD PRIMARY KEY (`TaskID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tasks__communications`
--
ALTER TABLE `tasks__communications`
  ADD PRIMARY KEY (`CommID`);

--
-- Indexes for table `task__assigned__org__lists`
--
ALTER TABLE `task__assigned__org__lists`
  ADD PRIMARY KEY (`AssignOrgID`);

--
-- Indexes for table `task__assigned__users`
--
ALTER TABLE `task__assigned__users`
  ADD PRIMARY KEY (`AssignUserID`);

--
-- Indexes for table `task__categories`
--
ALTER TABLE `task__categories`
  ADD PRIMARY KEY (`TaskCatID`);

--
-- Indexes for table `task__histories`
--
ALTER TABLE `task__histories`
  ADD PRIMARY KEY (`TaskHisID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user__lists`
--
ALTER TABLE `user__lists`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user__logins`
--
ALTER TABLE `user__logins`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexes for table `user__org__controls`
--
ALTER TABLE `user__org__controls`
  ADD PRIMARY KEY (`UserOrgID`);

--
-- Indexes for table `user__task__reads`
--
ALTER TABLE `user__task__reads`
  ADD PRIMARY KEY (`ReadID`);

--
-- Indexes for table `user__types`
--
ALTER TABLE `user__types`
  ADD PRIMARY KEY (`UserTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attach__types`
--
ALTER TABLE `attach__types`
  MODIFY `AttachTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `org_cat__dept__suggests`
--
ALTER TABLE `org_cat__dept__suggests`
  MODIFY `DeptID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `org__categories`
--
ALTER TABLE `org__categories`
  MODIFY `OrgCatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `org__lists`
--
ALTER TABLE `org__lists`
  MODIFY `OrgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `org__tasks__lists`
--
ALTER TABLE `org__tasks__lists`
  MODIFY `TaskID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tasks__communications`
--
ALTER TABLE `tasks__communications`
  MODIFY `CommID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `task__assigned__org__lists`
--
ALTER TABLE `task__assigned__org__lists`
  MODIFY `AssignOrgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `task__assigned__users`
--
ALTER TABLE `task__assigned__users`
  MODIFY `AssignUserID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `task__categories`
--
ALTER TABLE `task__categories`
  MODIFY `TaskCatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `task__histories`
--
ALTER TABLE `task__histories`
  MODIFY `TaskHisID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user__lists`
--
ALTER TABLE `user__lists`
  MODIFY `UserID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user__logins`
--
ALTER TABLE `user__logins`
  MODIFY `LoginID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user__org__controls`
--
ALTER TABLE `user__org__controls`
  MODIFY `UserOrgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user__task__reads`
--
ALTER TABLE `user__task__reads`
  MODIFY `ReadID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user__types`
--
ALTER TABLE `user__types`
  MODIFY `UserTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
