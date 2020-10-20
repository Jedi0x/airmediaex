-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2020 at 06:56 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity_log`
--

DROP TABLE IF EXISTS `tblactivity_log`;
CREATE TABLE IF NOT EXISTS `tblactivity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staffid` (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=866 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblactivity_log`
--

INSERT INTO `tblactivity_log` (`id`, `description`, `date`, `staffid`) VALUES
(659, 'Non Existing User Tried to Login [Email: testbitsclan@gmail.com, Is Staff Member: Yes, IP: ::1]', '2020-09-22 13:42:52', NULL),
(660, 'Non Existing User Tried to Login [Email: testbitsclan@gmail.com, Is Staff Member: Yes, IP: ::1]', '2020-09-22 13:42:59', NULL),
(661, 'Failed Login Attempt [Email: haadi.javaid@gmail.com, Is Staff Member: Yes, IP: ::1]', '2020-09-26 10:24:34', NULL),
(662, 'Items Group Created [Name: TestGroup]', '2020-09-26 10:35:02', 'Haider Javaid'),
(663, 'Items Group Created [Name: TestGroup1]', '2020-09-26 10:35:13', 'Haider Javaid'),
(664, 'Invoice Item Updated [ID: 11, 3D Graphic Design]', '2020-09-26 10:35:22', 'Haider Javaid'),
(665, 'Invoice Item Updated [ID: 9, Advertisement Budget]', '2020-09-26 10:35:31', 'Haider Javaid'),
(666, 'Invoice Item Updated [ID: 14, Application Development]', '2020-09-26 10:35:35', 'Haider Javaid'),
(667, 'Invoice Item Updated [ID: 8, Bulletin for attachments Layout ]', '2020-09-26 10:35:39', 'Haider Javaid'),
(668, 'Invoice Item Updated [ID: 7, Eventbrite Integration with Zoom Webinars]', '2020-09-26 10:35:43', 'Haider Javaid'),
(669, 'Invoice Item Updated [ID: 2, Google Suite Users]', '2020-09-26 10:35:46', 'Haider Javaid'),
(670, 'Invoice Item Updated [ID: 4, Graphics]', '2020-09-26 10:35:50', 'Haider Javaid'),
(671, 'Invoice Item Updated [ID: 3, Landing Page Design]', '2020-09-26 10:35:54', 'Haider Javaid'),
(672, 'Invoice Item Updated [ID: 12, Marketing Outsourcing ]', '2020-09-26 10:36:01', 'Haider Javaid'),
(673, 'Invoice Item Updated [ID: 13, PAYMENT]', '2020-09-26 10:36:06', 'Haider Javaid'),
(674, 'Invoice Item Updated [ID: 15, Reputation Management]', '2020-09-26 10:36:10', 'Haider Javaid'),
(675, 'Invoice Item Updated [ID: 16, Test Item]', '2020-09-26 10:36:14', 'Haider Javaid'),
(676, 'Invoice Item Updated [ID: 6, Webinar Organic and Paid promotions]', '2020-09-26 10:36:20', 'Haider Javaid'),
(677, 'Invoice Item Updated [ID: 10, Web Hosting]', '2020-09-26 10:36:23', 'Haider Javaid'),
(678, 'Invoice Item Updated [ID: 1, Web Development]', '2020-09-26 10:36:27', 'Haider Javaid'),
(679, 'Invoice Item Updated [ID: 15, Reputation Management]', '2020-09-26 10:36:43', 'Haider Javaid'),
(680, 'Invoice Item Updated [ID: 13, PAYMENT]', '2020-09-26 10:36:52', 'Haider Javaid'),
(681, 'Invoice Item Updated [ID: 4, Graphics]', '2020-09-26 10:36:57', 'Haider Javaid'),
(682, 'Invoice Item Updated [ID: 14, Application Development]', '2020-09-26 10:37:02', 'Haider Javaid'),
(683, 'Invoice Item Updated [ID: 5, Testing]', '2020-09-26 10:37:42', 'Haider Javaid'),
(684, 'Items Group Created [Name: Test Group 2]', '2020-09-28 04:49:27', 'Haider Javaid'),
(685, 'Items Group Created [Name: Test Group 3]', '2020-09-28 04:49:36', 'Haider Javaid'),
(686, 'Invoice Item Updated [ID: 8, Bulletin for attachments Layout ]', '2020-09-28 04:49:50', 'Haider Javaid'),
(687, 'Invoice Item Updated [ID: 7, Eventbrite Integration with Zoom Webinars]', '2020-09-28 04:49:55', 'Haider Javaid'),
(688, 'Invoice Item Updated [ID: 2, Google Suite Users]', '2020-09-28 04:49:59', 'Haider Javaid'),
(689, 'Invoice Item Updated [ID: 3, Landing Page Design]', '2020-09-28 04:50:05', 'Haider Javaid'),
(690, 'Invoice Item Updated [ID: 12, Marketing Outsourcing ]', '2020-09-28 04:50:08', 'Haider Javaid'),
(691, 'Invoice Item Updated [ID: 15, Reputation Management]', '2020-09-28 04:50:13', 'Haider Javaid'),
(692, 'Invoice Item Updated [ID: 6, Webinar Organic and Paid promotions]', '2020-09-28 04:50:18', 'Haider Javaid'),
(693, 'Invoice Item Updated [ID: 10, Web Hosting]', '2020-09-28 04:50:21', 'Haider Javaid'),
(694, 'Invoice Item Updated [ID: 1, Web Development]', '2020-09-28 04:50:25', 'Haider Javaid'),
(695, 'Invoice Item Updated [ID: 5, Testing]', '2020-09-28 04:50:29', 'Haider Javaid'),
(696, 'Invoice Item Updated [ID: 11, 3D Graphic Design]', '2020-09-28 08:03:57', 'Haider Javaid'),
(697, 'Invoice Status Updated [Invoice Number: INV-0103-20, From: Unpaid To: Paid]', '2020-10-01 15:06:37', 'Haider Javaid'),
(698, 'Invoice Status Updated [Invoice Number: INV-0116-20, From: Unpaid To: Paid]', '2020-10-07 10:54:28', 'Haider Javaid'),
(699, 'Payment Recorded [ID:10, Invoice Number: INV-0116-20, Total: $3,360.00]', '2020-10-07 10:54:28', 'Haider Javaid'),
(700, 'Item Group Deleted [Name: dsadasdas]', '2020-10-08 07:07:37', 'Haider Javaid'),
(701, 'Item Group Deleted [Name: s1]', '2020-10-08 07:07:42', 'Haider Javaid'),
(702, 'Item Group Deleted [Name: Xassssss]', '2020-10-08 07:07:48', 'Haider Javaid'),
(703, 'Item Group Deleted [Name: Xassssss]', '2020-10-08 07:08:02', 'Haider Javaid'),
(704, 'Item Group Deleted [Name: Xas1]', '2020-10-08 07:08:08', 'Haider Javaid'),
(705, 'Item Group Deleted [Name: Xas1]', '2020-10-08 07:08:14', 'Haider Javaid'),
(706, 'Item Group Deleted [Name: X1gx]', '2020-10-08 07:08:19', 'Haider Javaid'),
(707, 'Item Group Deleted [Name: X1gRoup3]', '2020-10-08 07:08:25', 'Haider Javaid'),
(708, 'Item Group Deleted [Name: TG1]', '2020-10-08 07:08:32', 'Haider Javaid'),
(709, 'Item Group Deleted [Name: Testxc1]', '2020-10-08 07:08:37', 'Haider Javaid'),
(710, 'Item Group Deleted [Name: TestGroupX1]', '2020-10-08 07:08:43', 'Haider Javaid'),
(711, 'Item Group Deleted [Name: TestGp1]', '2020-10-08 07:08:50', 'Haider Javaid'),
(712, 'Invoice Item Updated [ID: 6, Webinar Organic and Paid promotions]', '2020-10-08 12:30:37', 'Haider Javaid'),
(713, 'Invoice Item Updated [ID: 10, Web Hosting]', '2020-10-08 12:30:50', 'Haider Javaid'),
(714, 'Invoice Item Updated [ID: 1, Web Development]', '2020-10-08 12:30:59', 'Haider Javaid'),
(715, 'Invoice Item Updated [ID: 5, Testing]', '2020-10-08 12:31:03', 'Haider Javaid'),
(716, 'Invoice Item Updated [ID: 15, Reputation Management]', '2020-10-08 12:31:07', 'Haider Javaid'),
(717, 'Invoice Item Updated [ID: 13, PAYMENT]', '2020-10-08 12:31:14', 'Haider Javaid'),
(718, 'Invoice Item Updated [ID: 3, Landing Page Design]', '2020-10-08 12:31:20', 'Haider Javaid'),
(719, 'Invoice Item Updated [ID: 4, Graphics]', '2020-10-08 12:31:23', 'Haider Javaid'),
(720, 'New Invoice Item Added [ID:16, Test Product]', '2020-10-13 11:59:44', 'Haider Javaid'),
(721, 'Invoice Item Updated [ID: 16, Test Product]', '2020-10-13 11:59:52', 'Haider Javaid'),
(722, 'Invoice Item Updated [ID: 16, Test Product]', '2020-10-13 12:00:35', 'Haider Javaid'),
(723, 'Invoice Item Updated [ID: 16, Test Product]', '2020-10-13 12:03:02', 'Haider Javaid'),
(724, 'New Invoice Item Added [ID:17, Test Product 1]', '2020-10-13 12:03:30', 'Haider Javaid'),
(725, 'New Invoice Item Added [ID:18, Test Product 2]', '2020-10-13 12:03:54', 'Haider Javaid'),
(726, 'Cron Invoked Manually', '2020-10-16 09:13:21', 'Haider Javaid'),
(727, 'Database Backup [database_backup_2020-10-16-09-13-21-v2-4-4.zip]', '2020-10-16 09:13:21', 'Haider Javaid'),
(728, 'Database Backup [database_backup_2020-10-16-09-13-22-v2-4-4.zip]', '2020-10-16 09:13:22', 'Haider Javaid'),
(729, 'Cron Invoked Manually', '2020-10-16 09:14:47', 'Haider Javaid'),
(730, 'Cron Invoked Manually', '2020-10-16 09:18:48', 'Haider Javaid'),
(731, 'Cron Invoked Manually', '2020-10-16 09:19:01', 'Haider Javaid'),
(732, 'Cron Invoked Manually', '2020-10-16 09:19:46', 'Haider Javaid'),
(733, 'Cron Invoked Manually', '2020-10-16 09:20:15', 'Haider Javaid'),
(734, 'Cron Invoked Manually', '2020-10-16 09:20:57', 'Haider Javaid'),
(735, 'Cron Invoked Manually', '2020-10-16 09:22:22', 'Haider Javaid'),
(736, 'Cron Invoked Manually', '2020-10-16 09:23:51', 'Haider Javaid'),
(737, 'Cron Invoked Manually', '2020-10-16 09:37:52', 'Haider Javaid'),
(738, 'Database Backup [database_backup_2020-10-16-09-37-53-v2-4-4.zip]', '2020-10-16 09:37:53', 'Haider Javaid'),
(739, 'Cron Invoked Manually', '2020-10-16 09:37:57', 'Haider Javaid'),
(740, 'Database Backup [database_backup_2020-10-16-09-37-57-v2-4-4.zip]', '2020-10-16 09:37:57', 'Haider Javaid'),
(741, 'Cron Invoked Manually', '2020-10-16 09:57:45', 'Haider Javaid'),
(742, 'Cron Invoked Manually', '2020-10-16 10:02:19', 'Haider Javaid'),
(743, 'Cron Invoked Manually', '2020-10-16 10:09:49', 'Haider Javaid'),
(744, 'Cron Invoked Manually', '2020-10-16 10:14:26', 'Haider Javaid'),
(745, 'Cron Invoked Manually', '2020-10-16 10:18:46', 'Haider Javaid'),
(746, 'Cron Invoked Manually', '2020-10-16 10:21:52', 'Haider Javaid'),
(747, 'Cron Invoked Manually', '2020-10-16 10:26:32', 'Haider Javaid'),
(748, 'Cron Invoked Manually', '2020-10-16 10:29:45', 'Haider Javaid'),
(749, 'Cron Invoked Manually', '2020-10-16 10:30:12', 'Haider Javaid'),
(750, 'Cron Invoked Manually', '2020-10-16 10:30:41', 'Haider Javaid'),
(751, 'Cron Invoked Manually', '2020-10-16 10:31:09', 'Haider Javaid'),
(752, 'Cron Invoked Manually', '2020-10-16 10:31:23', 'Haider Javaid'),
(753, 'Cron Invoked Manually', '2020-10-16 10:31:29', 'Haider Javaid'),
(754, 'Cron Invoked Manually', '2020-10-16 10:31:59', 'Haider Javaid'),
(755, 'Cron Invoked Manually', '2020-10-16 10:33:39', 'Haider Javaid'),
(756, 'Cron Invoked Manually', '2020-10-16 10:33:49', 'Haider Javaid'),
(757, 'Cron Invoked Manually', '2020-10-16 10:34:49', 'Haider Javaid'),
(758, 'Cron Invoked Manually', '2020-10-16 11:30:00', 'Haider Javaid'),
(759, 'Cron Invoked Manually', '2020-10-16 11:36:22', 'Haider Javaid'),
(760, 'Cron Invoked Manually', '2020-10-16 11:40:33', 'Haider Javaid'),
(761, 'Cron Invoked Manually', '2020-10-16 11:40:40', 'Haider Javaid'),
(762, 'Cron Invoked Manually', '2020-10-16 11:40:54', 'Haider Javaid'),
(763, 'Cron Invoked Manually', '2020-10-16 11:43:16', 'Haider Javaid'),
(764, 'Cron Invoked Manually', '2020-10-16 11:55:25', 'Haider Javaid'),
(765, 'Cron Invoked Manually', '2020-10-16 11:55:58', 'Haider Javaid'),
(766, 'Cron Invoked Manually', '2020-10-16 12:00:38', 'Haider Javaid'),
(767, 'Cron Invoked Manually', '2020-10-19 03:51:35', 'Haider Javaid'),
(768, 'Database Backup [database_backup_2020-10-19-03-51-37-v2-4-4.zip]', '2020-10-19 03:51:37', 'Haider Javaid'),
(769, 'Cron Invoked Manually', '2020-10-19 03:54:22', 'Haider Javaid'),
(770, 'Cron Invoked Manually', '2020-10-19 03:58:08', 'Haider Javaid'),
(771, 'Cron Invoked Manually', '2020-10-19 04:00:05', 'Haider Javaid'),
(772, 'Cron Invoked Manually', '2020-10-19 04:05:49', 'Haider Javaid'),
(773, 'Cron Invoked Manually', '2020-10-19 04:11:43', 'Haider Javaid'),
(774, 'Cron Invoked Manually', '2020-10-19 04:15:21', 'Haider Javaid'),
(775, 'Cron Invoked Manually', '2020-10-19 04:18:14', 'Haider Javaid'),
(776, 'Cron Invoked Manually', '2020-10-19 04:20:55', 'Haider Javaid'),
(777, 'Cron Invoked Manually', '2020-10-19 04:23:20', 'Haider Javaid'),
(778, 'Cron Invoked Manually', '2020-10-19 04:40:17', 'Haider Javaid'),
(779, 'Cron Invoked Manually', '2020-10-19 04:43:33', 'Haider Javaid'),
(780, 'Cron Invoked Manually', '2020-10-19 04:43:42', 'Haider Javaid'),
(781, 'Cron Invoked Manually', '2020-10-19 04:43:43', 'Haider Javaid'),
(782, 'Cron Invoked Manually', '2020-10-19 04:43:44', 'Haider Javaid'),
(783, 'Cron Invoked Manually', '2020-10-19 04:44:05', 'Haider Javaid'),
(784, 'Cron Invoked Manually', '2020-10-19 04:44:07', 'Haider Javaid'),
(785, 'Cron Invoked Manually', '2020-10-19 04:44:07', 'Haider Javaid'),
(786, 'Cron Invoked Manually', '2020-10-19 04:44:25', 'Haider Javaid'),
(787, 'Cron Invoked Manually', '2020-10-19 04:44:37', 'Haider Javaid'),
(788, 'Cron Invoked Manually', '2020-10-19 04:44:59', 'Haider Javaid'),
(789, 'Cron Invoked Manually', '2020-10-19 04:46:52', 'Haider Javaid'),
(790, 'Cron Invoked Manually', '2020-10-19 04:48:28', 'Haider Javaid'),
(791, 'Cron Invoked Manually', '2020-10-19 04:50:45', 'Haider Javaid'),
(792, 'Cron Invoked Manually', '2020-10-19 04:51:52', 'Haider Javaid'),
(793, 'Cron Invoked Manually', '2020-10-19 04:53:11', 'Haider Javaid'),
(794, 'Cron Invoked Manually', '2020-10-19 04:56:59', 'Haider Javaid'),
(795, 'Cron Invoked Manually', '2020-10-19 04:59:19', 'Haider Javaid'),
(796, 'Cron Invoked Manually', '2020-10-19 04:59:22', 'Haider Javaid'),
(797, 'Cron Invoked Manually', '2020-10-19 04:59:33', 'Haider Javaid'),
(798, 'Cron Invoked Manually', '2020-10-19 05:00:01', 'Haider Javaid'),
(799, 'Cron Invoked Manually', '2020-10-19 05:02:59', 'Haider Javaid'),
(800, 'Cron Invoked Manually', '2020-10-19 05:03:02', 'Haider Javaid'),
(801, 'Cron Invoked Manually', '2020-10-19 05:03:36', 'Haider Javaid'),
(802, 'Cron Invoked Manually', '2020-10-19 05:03:54', 'Haider Javaid'),
(803, 'Cron Invoked Manually', '2020-10-19 05:04:14', 'Haider Javaid'),
(804, 'Cron Invoked Manually', '2020-10-19 05:04:45', 'Haider Javaid'),
(805, 'Cron Invoked Manually', '2020-10-19 05:10:55', 'Haider Javaid'),
(806, 'Cron Invoked Manually', '2020-10-19 05:15:04', 'Haider Javaid'),
(807, 'Cron Invoked Manually', '2020-10-19 05:15:14', 'Haider Javaid'),
(808, 'Cron Invoked Manually', '2020-10-19 05:15:38', 'Haider Javaid'),
(809, 'Cron Invoked Manually', '2020-10-19 05:16:52', 'Haider Javaid'),
(810, 'Cron Invoked Manually', '2020-10-19 05:17:08', 'Haider Javaid'),
(811, 'Cron Invoked Manually', '2020-10-19 05:17:15', 'Haider Javaid'),
(812, 'Cron Invoked Manually', '2020-10-19 05:17:34', 'Haider Javaid'),
(813, 'Cron Invoked Manually', '2020-10-19 05:17:39', 'Haider Javaid'),
(814, 'Cron Invoked Manually', '2020-10-19 05:18:01', 'Haider Javaid'),
(815, 'Cron Invoked Manually', '2020-10-19 05:19:16', 'Haider Javaid'),
(816, 'Cron Invoked Manually', '2020-10-19 05:19:38', 'Haider Javaid'),
(817, 'Cron Invoked Manually', '2020-10-19 05:20:30', 'Haider Javaid'),
(818, 'Cron Invoked Manually', '2020-10-19 05:21:28', 'Haider Javaid'),
(819, 'Cron Invoked Manually', '2020-10-19 05:23:20', 'Haider Javaid'),
(820, 'Cron Invoked Manually', '2020-10-19 05:26:09', 'Haider Javaid'),
(821, 'Cron Invoked Manually', '2020-10-19 05:26:21', 'Haider Javaid'),
(822, 'Cron Invoked Manually', '2020-10-19 05:26:31', 'Haider Javaid'),
(823, 'Cron Invoked Manually', '2020-10-19 05:28:27', 'Haider Javaid'),
(824, 'Cron Invoked Manually', '2020-10-19 05:34:21', 'Haider Javaid'),
(825, 'Cron Invoked Manually', '2020-10-19 05:37:18', 'Haider Javaid'),
(826, 'Cron Invoked Manually', '2020-10-19 05:52:52', 'Haider Javaid'),
(827, 'Cron Invoked Manually', '2020-10-19 05:56:59', 'Haider Javaid'),
(828, 'Cron Invoked Manually', '2020-10-19 06:00:59', 'Haider Javaid'),
(829, 'Cron Invoked Manually', '2020-10-19 06:07:21', 'Haider Javaid'),
(830, 'Cron Invoked Manually', '2020-10-19 06:07:50', 'Haider Javaid'),
(831, 'Cron Invoked Manually', '2020-10-19 06:11:58', 'Haider Javaid'),
(832, 'Cron Invoked Manually', '2020-10-19 06:14:37', 'Haider Javaid'),
(833, 'Cron Invoked Manually', '2020-10-19 06:14:45', 'Haider Javaid'),
(834, 'Cron Invoked Manually', '2020-10-19 06:14:56', 'Haider Javaid'),
(835, 'Cron Invoked Manually', '2020-10-19 06:15:04', 'Haider Javaid'),
(836, 'Cron Invoked Manually', '2020-10-19 06:15:38', 'Haider Javaid'),
(837, 'Cron Invoked Manually', '2020-10-19 06:18:32', 'Haider Javaid'),
(838, 'Cron Invoked Manually', '2020-10-19 06:26:42', 'Haider Javaid'),
(839, 'Cron Invoked Manually', '2020-10-19 06:28:52', 'Haider Javaid'),
(840, 'Cron Invoked Manually', '2020-10-19 06:30:56', 'Haider Javaid'),
(841, 'Cron Invoked Manually', '2020-10-19 06:37:38', 'Haider Javaid'),
(842, 'Cron Invoked Manually', '2020-10-19 06:42:37', 'Haider Javaid'),
(843, 'Cron Invoked Manually', '2020-10-19 06:45:47', 'Haider Javaid'),
(844, 'Cron Invoked Manually', '2020-10-19 06:46:34', 'Haider Javaid'),
(845, 'Cron Invoked Manually', '2020-10-19 06:49:28', 'Haider Javaid'),
(846, 'Cron Invoked Manually', '2020-10-19 06:52:14', 'Haider Javaid'),
(847, 'Cron Invoked Manually', '2020-10-19 06:55:13', 'Haider Javaid'),
(848, 'Cron Invoked Manually', '2020-10-19 06:57:39', 'Haider Javaid'),
(849, 'Cron Invoked Manually', '2020-10-19 06:57:56', 'Haider Javaid'),
(850, 'Cron Invoked Manually', '2020-10-19 06:58:19', 'Haider Javaid'),
(851, 'Cron Invoked Manually', '2020-10-19 06:58:43', 'Haider Javaid'),
(852, 'Cron Invoked Manually', '2020-10-19 06:59:14', 'Haider Javaid'),
(853, 'Cron Invoked Manually', '2020-10-19 07:00:01', 'Haider Javaid'),
(854, 'Cron Invoked Manually', '2020-10-19 07:00:42', 'Haider Javaid'),
(855, 'Cron Invoked Manually', '2020-10-19 07:00:57', 'Haider Javaid'),
(856, 'Cron Invoked Manually', '2020-10-19 07:01:15', 'Haider Javaid'),
(857, 'Cron Invoked Manually', '2020-10-19 07:01:35', 'Haider Javaid'),
(858, 'Cron Invoked Manually', '2020-10-19 07:03:27', 'Haider Javaid'),
(859, 'Cron Invoked Manually', '2020-10-19 07:05:29', 'Haider Javaid'),
(860, 'Cron Invoked Manually', '2020-10-19 07:09:02', 'Haider Javaid'),
(861, 'Cron Invoked Manually', '2020-10-19 07:09:17', 'Haider Javaid'),
(862, 'Cron Invoked Manually', '2020-10-19 07:16:25', 'Haider Javaid'),
(863, 'Cron Invoked Manually', '2020-10-19 07:19:56', 'Haider Javaid'),
(864, 'Cron Invoked Manually', '2020-10-19 07:22:08', 'Haider Javaid'),
(865, 'Cron Invoked Manually', '2020-10-19 07:24:14', 'Haider Javaid');

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity_log_opportunity`
--

DROP TABLE IF EXISTS `tblactivity_log_opportunity`;
CREATE TABLE IF NOT EXISTS `tblactivity_log_opportunity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opportunity_id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblactivity_log_opportunity`
--

INSERT INTO `tblactivity_log_opportunity` (`id`, `opportunity_id`, `description`, `staffid`, `date`) VALUES
(1, 1, 'Opportunity Created [ID: 1, From Staff: 1]', 'Andrew Gordon', '2020-06-30 17:49:10'),
(2, 1, 'Opportunity Profile Updated [ID: 1, From Staff: 1]', 'Andrew Gordon', '2020-06-30 17:49:29'),
(3, 1, 'Opportunity Call Log Created [ID: 1, From Staff: 1]', 'Andrew Gordon', '2020-06-30 17:51:03'),
(4, 1, 'Team Created [ID: 1, From Staff: 1]', 'Andrew Gordon', '2020-06-30 17:51:42'),
(5, 1, 'Opportunity Contact Updated [ID: 1, From Staff: 1]', 'Andrew Gordon', '2020-06-30 17:51:53'),
(6, 2, 'Opportunity Created [ID: 2, From Staff: 1]', 'Andrew Gordon', '2020-07-02 10:33:37'),
(7, 2, 'Opportunity Contact Updated [ID: 2, From Staff: 1]', 'Andrew Gordon', '2020-07-02 10:33:46'),
(8, 2, 'Team Created [ID: 2, From Staff: 1]', 'Andrew Gordon', '2020-07-02 10:34:03'),
(9, 2, 'Opportunity Call Log Created [ID: 2, From Staff: 1]', 'Andrew Gordon', '2020-07-02 10:34:35'),
(10, 2, 'Opportunity Call Log Created [ID: 3, From Staff: 1]', 'Andrew Gordon', '2020-07-02 10:34:46'),
(11, 3, 'Opportunity Created [ID: 3, From Staff: 1]', 'Andrew Gordon', '2020-08-14 09:41:34'),
(12, 4, 'Opportunity Created [ID: 4, From Staff: 1]', 'Andrew Gordon', '2020-08-23 23:10:59'),
(13, 5, 'Opportunity Created [ID: 5, From Staff: 4]', 'Haider Javaid', '2020-09-15 13:36:34'),
(14, 5, 'Opportunity Proposal Created [ID: 5, From Staff: 4]', 'Haider Javaid', '2020-09-15 13:37:41'),
(15, 6, 'Opportunity Created [ID: 6, From Staff: 4]', 'Haider Javaid', '2020-09-18 09:37:20'),
(16, 7, 'Opportunity Created [ID: 7, From Staff: 4]', 'Haider Javaid', '2020-09-18 09:47:25'),
(17, 7, 'Opportunity Profile Updated [ID: 7, From Staff: 4]', 'Haider Javaid', '2020-09-18 09:47:35'),
(18, 2, 'Opportunity Profile Updated [ID: 2, From Staff: 4]', 'Haider Javaid', '2020-09-18 13:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

DROP TABLE IF EXISTS `tblannouncements`;
CREATE TABLE IF NOT EXISTS `tblannouncements` (
  `announcementid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL,
  PRIMARY KEY (`announcementid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblassets`
--

DROP TABLE IF EXISTS `tblassets`;
CREATE TABLE IF NOT EXISTS `tblassets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assets_code` varchar(20) NOT NULL,
  `assets_name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `series` varchar(200) DEFAULT NULL,
  `asset_group` int(11) DEFAULT NULL,
  `asset_location` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `date_buy` date NOT NULL,
  `warranty_period` int(11) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `depreciation` int(11) NOT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `supplier_address` varchar(255) DEFAULT NULL,
  `supplier_phone` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `total_allocation` int(11) DEFAULT 0,
  `total_lost` int(11) DEFAULT 0,
  `total_liquidation` int(11) DEFAULT 0,
  `total_damages` int(11) DEFAULT 0,
  `total_warranty` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblassets_acction_1`
--

DROP TABLE IF EXISTS `tblassets_acction_1`;
CREATE TABLE IF NOT EXISTS `tblassets_acction_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acction_code` varchar(100) NOT NULL,
  `assets` int(11) NOT NULL,
  `acction_from` int(11) NOT NULL,
  `acction_to` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `time_acction` datetime NOT NULL,
  `asset_location` varchar(255) DEFAULT NULL,
  `acction_location` varchar(255) NOT NULL,
  `acction_reason` text DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblassets_acction_2`
--

DROP TABLE IF EXISTS `tblassets_acction_2`;
CREATE TABLE IF NOT EXISTS `tblassets_acction_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acction_code` varchar(100) NOT NULL,
  `assets` int(11) NOT NULL,
  `acction_from` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cost` decimal(15,0) DEFAULT NULL,
  `time_acction` datetime NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblassets_group`
--

DROP TABLE IF EXISTS `tblassets_group`;
CREATE TABLE IF NOT EXISTS `tblassets_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassets_group`
--

INSERT INTO `tblassets_group` (`group_id`, `group_name`) VALUES
(1, 'Computer Equipment'),
(2, 'Software'),
(3, 'Licenses');

-- --------------------------------------------------------

--
-- Table structure for table `tblasset_location`
--

DROP TABLE IF EXISTS `tblasset_location`;
CREATE TABLE IF NOT EXISTS `tblasset_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblasset_location`
--

INSERT INTO `tblasset_location` (`location_id`, `location`) VALUES
(1, 'CAST (on Loan)'),
(2, 'Igor Storage'),
(3, 'Andrew Storage'),
(4, 'Google Drive');

-- --------------------------------------------------------

--
-- Table structure for table `tblasset_unit`
--

DROP TABLE IF EXISTS `tblasset_unit`;
CREATE TABLE IF NOT EXISTS `tblasset_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(100) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
CREATE TABLE IF NOT EXISTS `tblbooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` varchar(255) NOT NULL,
  `orderer` int(11) NOT NULL,
  `resource_group` int(11) NOT NULL,
  `resource` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking_follower`
--

DROP TABLE IF EXISTS `tblbooking_follower`;
CREATE TABLE IF NOT EXISTS `tblbooking_follower` (
  `follower_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking` int(11) NOT NULL,
  `follower` int(11) NOT NULL,
  PRIMARY KEY (`follower_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcall_log`
--

DROP TABLE IF EXISTS `tblcall_log`;
CREATE TABLE IF NOT EXISTS `tblcall_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `call_number` varchar(100) NOT NULL,
  `opportunity_id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcall_log`
--

INSERT INTO `tblcall_log` (`id`, `call_number`, `opportunity_id`, `description`, `addedfrom`, `date`) VALUES
(1, '312456785432', 1, 'Went well talked about stuff', 1, '2020-06-30 17:50:00'),
(2, '312456785432', 2, 'CAll was good', 1, '2020-07-10 14:00:00'),
(3, '312456785432', 2, 'afdsfasdfasdfasdf', 1, '2020-07-15 10:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcall_logs`
--

DROP TABLE IF EXISTS `tblcall_logs`;
CREATE TABLE IF NOT EXISTS `tblcall_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `call_purpose` varchar(255) DEFAULT NULL,
  `call_summary` text DEFAULT NULL,
  `call_start_time` datetime NOT NULL,
  `call_end_time` datetime NOT NULL,
  `call_duration` varchar(255) DEFAULT NULL,
  `has_follow_up` tinyint(4) DEFAULT 0,
  `follow_up_schedule` datetime DEFAULT NULL,
  `is_important` tinyint(4) DEFAULT 0,
  `is_completed` tinyint(4) DEFAULT 0,
  `staffid` int(11) DEFAULT 0,
  `call_with_staffid` int(11) DEFAULT 0,
  `call_direction` int(11) DEFAULT 0,
  `notified` tinyint(4) DEFAULT 0,
  `customer_type` varchar(255) DEFAULT NULL,
  `clientid` int(11) DEFAULT 0,
  `rel_type` varchar(255) DEFAULT NULL,
  `rel_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `staffid` (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblclients`
--

DROP TABLE IF EXISTS `tblclients`;
CREATE TABLE IF NOT EXISTS `tblclients` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(191) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT 0,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT 0,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `show_primary_contact` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT 1,
  `addedfrom` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`userid`),
  KEY `country` (`country`),
  KEY `leadid` (`leadid`),
  KEY `company` (`company`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblclients`
--

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`) VALUES
(1, 'CSD Cement Systems for Dentistry Inc.', '', '905 866 6657', 40, 'Brampton', 'L6W 1B1', 'ON', '110 Queen St East', '', '2020-04-18 12:53:04', 1, NULL, '110 Queen St East', 'Brampton', 'ON', 'L6W 1B1', 40, '110 Queen St East', 'Brampton', 'ON', 'L6W 1B1', 40, NULL, NULL, 'english', 3, 0, 'cus_HGZZwodnJReq1p', 1, 1),
(2, 'AG CORP', '', '', 0, '', '', '', '', '', '2020-04-18 17:46:27', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, 'cus_H96mgdXa8Jr9ca', 1, 1),
(3, 'CAST Group of Companies Inc.', '', '', 40, 'Toronto', 'M6S3P2', 'ON', '35 Ripley Ave.<br />\r\nSuite 1', 'www.Cast-soft.com', '2020-08-14 09:40:13', 1, NULL, '35 Ripley Ave.<br />\r\nSuite 1', 'Toronto', 'ON', 'M6S3P2', 40, '35 Ripley Ave.<br />\r\nSuite 1', 'Toronto', 'ON', 'M6S3P2', 40, NULL, NULL, '', 3, 0, NULL, 1, 1),
(4, 'Dennis Ng', '', '', 40, '', '', '', '', '', '2020-08-23 22:48:58', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, NULL, 1, 1),
(5, 'Element Xero', '', '', 0, '', '', '', '', '', '2020-08-24 00:01:37', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblconsents`
--

DROP TABLE IF EXISTS `tblconsents`;
CREATE TABLE IF NOT EXISTS `tblconsents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `opt_in_purpose_description` text DEFAULT NULL,
  `purpose_id` int(11) NOT NULL,
  `staff_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purpose_id` (`purpose_id`),
  KEY `contact_id` (`contact_id`),
  KEY `lead_id` (`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblconsent_purposes`
--

DROP TABLE IF EXISTS `tblconsent_purposes`;
CREATE TABLE IF NOT EXISTS `tblconsent_purposes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

DROP TABLE IF EXISTS `tblcontacts`;
CREATE TABLE IF NOT EXISTS `tblcontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT 1,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT 1,
  `estimate_emails` tinyint(1) NOT NULL DEFAULT 1,
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT 1,
  `contract_emails` tinyint(1) NOT NULL DEFAULT 1,
  `task_emails` tinyint(1) NOT NULL DEFAULT 1,
  `project_emails` tinyint(1) NOT NULL DEFAULT 1,
  `ticket_emails` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`),
  KEY `email` (`email`),
  KEY `is_primary` (`is_primary`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `email_verified_at`, `email_verification_key`, `email_verification_sent_at`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `invoice_emails`, `estimate_emails`, `credit_note_emails`, `contract_emails`, `task_emails`, `project_emails`, `ticket_emails`) VALUES
(1, 1, 1, 'Emil', 'Svoboda', 'drsvoboda@rogers.com', '', 'Owner', '2020-04-18 12:53:34', '$2a$08$jnw.PRlX7pqRNbpxBdq1AuxUamvUmtawDDo0N.PLYzKfeseLIv9t.', NULL, NULL, '2020-04-18 12:53:34', NULL, NULL, '99.234.110.254', '2020-06-08 13:19:47', '2020-05-13 11:24:24', 1, NULL, '', 1, 1, 1, 1, 1, 1, 1),
(2, 1, 0, 'Christine', 'Wade', 'christine.wade@sympatico.ca', '', 'Marketing Specialist', '2020-04-18 12:55:04', '$2a$08$2rq.9FekDh4l0a4/kMXjVeIAKj4fBsZo8csx5iwZWFOH/FswGzjhm', NULL, NULL, '2020-04-18 12:55:04', NULL, NULL, '69.156.109.51', '2020-06-09 12:23:46', '2020-06-09 12:23:23', 1, NULL, '', 0, 0, 0, 1, 1, 1, 1),
(3, 1, 0, 'Eva', 'Gagyi', 'evaparkplacedentalcentre@gmail.com', '', 'Accounting', '2020-04-18 12:56:28', '$2a$08$U4J6/33qmA5m5QNInfv3JuRSAiJtXbRAUMY0BT2nTArTJGY4D340O', NULL, NULL, '2020-04-18 12:56:28', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 1, 1, 1, 0, 0, 0, 0),
(4, 2, 1, 'Andrew', 'Gordon', 'ame.gordon@gmail.com', '19058153845', '', '2020-04-18 17:46:52', '$2a$08$AGQ4oicLBMLGNOji5AqnX.2MoY6gOz90IH3vPWRbKvq2kVGx.IHHO', NULL, NULL, '2020-04-18 17:46:52', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1),
(5, 2, 0, 'Igor ', 'Test Silva', 'igfernando@gmail.com', '6565466636', 'Blah', '2020-04-20 14:22:30', '$2a$08$2zNuWvvv5WjFhFdsHCQI6ekC7maT7MSR74HlWF5qsLAlwcnkVOzgS', '2461517001d12d86afdf1926d8161c93', '2020-04-20 14:22:31', '2020-04-20 14:22:30', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1),
(6, 1, 0, 'Igor-customer', 'Silva', 'ig.fernan.do@gmail.com', '', '', '2020-05-13 10:14:05', '$2a$08$13EAFmXNbSjQXOVO.2HlNOGeraXODsSLe7qrYzO0crgDC8g8x1MO6', '37ca61caf8fb2cf1ad975f1a44cf5e7f', '2020-06-08 14:44:34', '2020-05-13 10:14:05', NULL, NULL, '198.84.189.167', '2020-06-08 14:35:31', '2020-06-08 14:35:16', 1, 'happy-baby-3-752x501.jpg', '', 1, 0, 0, 1, 1, 1, 0),
(7, 3, 1, 'Gilray', 'Densham', 'Gilray@cast-soft.com', '', 'CEO/President', '2020-08-14 09:40:46', '$2a$08$JIfz5rbM/7gDBjyhF3/KO.z2CYSieRwhnR8d6vUvipAp.m1gsi9LW', NULL, NULL, '2020-08-14 09:40:46', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 0, 0, 0, 0, 0, 0),
(8, 4, 1, 'Dennis', 'Ng', 'dennis@dngpc.com', '', 'Owner', '2020-08-23 22:50:02', '$2a$08$qUbk2DxdH3ShPPDn0Tw1O.swsWSiPEZqUrCcMRTzP0rGrLsn.0TAa', NULL, NULL, '2020-08-23 22:50:02', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact_permissions`
--

DROP TABLE IF EXISTS `tblcontact_permissions`;
CREATE TABLE IF NOT EXISTS `tblcontact_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontact_permissions`
--

INSERT INTO `tblcontact_permissions` (`id`, `permission_id`, `userid`) VALUES
(1, 1, 1),
(2, 2, 1),
(4, 4, 1),
(7, 5, 2),
(8, 6, 2),
(9, 1, 3),
(10, 2, 3),
(11, 3, 3),
(12, 1, 4),
(13, 2, 4),
(14, 3, 4),
(15, 4, 4),
(16, 5, 4),
(17, 6, 4),
(18, 1, 5),
(19, 2, 5),
(20, 3, 5),
(21, 4, 5),
(22, 5, 5),
(23, 6, 5),
(24, 1, 6),
(25, 2, 6),
(26, 3, 6),
(27, 4, 6),
(28, 5, 6),
(29, 6, 6),
(30, 6, 1),
(31, 3, 2),
(32, 4, 2),
(33, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts`
--

DROP TABLE IF EXISTS `tblcontracts`;
CREATE TABLE IF NOT EXISTS `tblcontracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT 0,
  `contract_value` decimal(15,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT 0,
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT 0,
  `signature` varchar(40) DEFAULT NULL,
  `marked_as_signed` tinyint(1) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client` (`client`),
  KEY `contract_type` (`contract_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontracts`
--

INSERT INTO `tblcontracts` (`id`, `content`, `description`, `subject`, `client`, `datestart`, `dateend`, `contract_type`, `project_id`, `addedfrom`, `dateadded`, `isexpirynotified`, `contract_value`, `trash`, `not_visible_to_client`, `hash`, `signed`, `signature`, `marked_as_signed`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`) VALUES
(1, '<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"> Click here to add content</span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\">&#160;</span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>\n<p><span class=\"text-danger text-uppercase mtop15 editor-add-content-notice\"></span></p>', '', 'Social Media Marketing', 2, '2020-07-06', '2021-06-30', 2, 0, 1, '2020-07-06 13:51:33', 0, '2500.00', 0, 0, 'dbd2d846c86addee6772c57e20f70f39', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts_types`
--

DROP TABLE IF EXISTS `tblcontracts_types`;
CREATE TABLE IF NOT EXISTS `tblcontracts_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontracts_types`
--

INSERT INTO `tblcontracts_types` (`id`, `name`) VALUES
(1, 'Non Disclosure Agreement'),
(2, 'Monthly Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_comments`
--

DROP TABLE IF EXISTS `tblcontract_comments`;
CREATE TABLE IF NOT EXISTS `tblcontract_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_renewals`
--

DROP TABLE IF EXISTS `tblcontract_renewals`;
CREATE TABLE IF NOT EXISTS `tblcontract_renewals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(15,2) DEFAULT NULL,
  `new_value` decimal(15,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT 0,
  `is_on_old_expiry_notified` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcountries`
--

DROP TABLE IF EXISTS `tblcountries`;
CREATE TABLE IF NOT EXISTS `tblcountries` (
  `country_id` int(5) NOT NULL AUTO_INCREMENT,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcountries`
--

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
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
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
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
(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
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
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
(130, 'MK', 'North Macedonia', 'Republic of North Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
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
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
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
-- Table structure for table `tblcreditnotes`
--

DROP TABLE IF EXISTS `tblcreditnotes`;
CREATE TABLE IF NOT EXISTS `tblcreditnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 1,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `adminnote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `clientnote` text DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) NOT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_credit_note` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `reference_no` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency` (`currency`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnote_refunds`
--

DROP TABLE IF EXISTS `tblcreditnote_refunds`;
CREATE TABLE IF NOT EXISTS `tblcreditnote_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_note_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `refunded_on` date NOT NULL,
  `payment_mode` varchar(40) NOT NULL,
  `note` text DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcredits`
--

DROP TABLE IF EXISTS `tblcredits`;
CREATE TABLE IF NOT EXISTS `tblcredits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrencies`
--

DROP TABLE IF EXISTS `tblcurrencies`;
CREATE TABLE IF NOT EXISTS `tblcurrencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decimal_separator` varchar(5) DEFAULT NULL,
  `thousand_separator` varchar(5) DEFAULT NULL,
  `placement` varchar(10) DEFAULT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `decimal_separator`, `thousand_separator`, `placement`, `isdefault`) VALUES
(1, '$', 'USD', '.', ',', 'before', 0),
(2, '€', 'EUR', ',', '.', 'before', 0),
(3, '$', 'CAD', '.', ',', 'before', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers_groups`
--

DROP TABLE IF EXISTS `tblcustomers_groups`;
CREATE TABLE IF NOT EXISTS `tblcustomers_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomers_groups`
--

INSERT INTO `tblcustomers_groups` (`id`, `name`) VALUES
(1, 'Internal');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_admins`
--

DROP TABLE IF EXISTS `tblcustomer_admins`;
CREATE TABLE IF NOT EXISTS `tblcustomer_admins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomer_admins`
--

INSERT INTO `tblcustomer_admins` (`staff_id`, `customer_id`, `date_assigned`) VALUES
(1, 1, '2020-04-18 13:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_groups`
--

DROP TABLE IF EXISTS `tblcustomer_groups`;
CREATE TABLE IF NOT EXISTS `tblcustomer_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomer_groups`
--

INSERT INTO `tblcustomer_groups` (`id`, `groupid`, `customer_id`) VALUES
(1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfields`
--

DROP TABLE IF EXISTS `tblcustomfields`;
CREATE TABLE IF NOT EXISTS `tblcustomfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldto` varchar(15) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `display_inline` tinyint(1) NOT NULL DEFAULT 0,
  `field_order` int(11) DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `show_on_pdf` int(11) NOT NULL DEFAULT 0,
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT 0,
  `only_admin` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_table` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_client_portal` int(11) NOT NULL DEFAULT 0,
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT 0,
  `bs_column` int(11) NOT NULL DEFAULT 12,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfieldsvalues`
--

DROP TABLE IF EXISTS `tblcustomfieldsvalues`;
CREATE TABLE IF NOT EXISTS `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(15) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid` (`relid`),
  KEY `fieldto` (`fieldto`),
  KEY `fieldid` (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

DROP TABLE IF EXISTS `tbldepartments`;
CREATE TABLE IF NOT EXISTS `tbldepartments` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(191) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_from_header` tinyint(1) NOT NULL DEFAULT 0,
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `delete_after_import` int(11) NOT NULL DEFAULT 0,
  `calendar_id` mediumtext DEFAULT NULL,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`departmentid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbldismissed_announcements`
--

DROP TABLE IF EXISTS `tbldismissed_announcements`;
CREATE TABLE IF NOT EXISTS `tbldismissed_announcements` (
  `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`dismissedannouncementid`),
  KEY `announcementid` (`announcementid`),
  KEY `staff` (`staff`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblemaillists`
--

DROP TABLE IF EXISTS `tblemaillists`;
CREATE TABLE IF NOT EXISTS `tblemaillists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblemailtemplates`
--

DROP TABLE IF EXISTS `tblemailtemplates`;
CREATE TABLE IF NOT EXISTS `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`emailtemplateid`)
) ENGINE=InnoDB AUTO_INCREMENT=1824 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href=\"%7Bcrm_url%7D\">{crm_url}</a><br /><br />Kind Regards, <br />{email_signature}<br /><br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Invoice status</strong>: {invoice_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department:</strong> {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a><br /><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">You have a new ticket reply to ticket <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket Subject:</strong> {ticket_subject}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style=\"font-size: 12pt;\">Hello {contact_firstname}&nbsp;{contact_lastname}<br /><br /></span>Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br /><br />Amount:&nbsp;<strong>{payment_total}<br /></strong>Date:&nbsp;<strong>{payment_date}</strong><br />Invoice number:&nbsp;<span style=\"font-size: 12pt;\"><strong># {invoice_number}<br /><br /></strong></span>-------------------------------------------------<br /><br />You can always view the invoice for this payment at the following link:&nbsp;<a href=\"{invoice_link}\"><span style=\"font-size: 12pt;\">{invoice_number}</span></a><br /><br />We are looking forward working with you.<br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">This invoice was due: {invoice_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'Invoice # {invoice_number} ', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<span style=\"font-size: 12pt;\">A new support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Please find the attached estimate <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to your communication.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style=\"font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for your estimate request.</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration Reminder (Sent to Customer Contacts)', 'Contract Expiration Reminder', '<span style=\"font-size: 12pt;\">Dear {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style=\"font-size: 12pt;\">Dear {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\">You have been assigned to a new task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {task_priority}<br /><br /></span><span style=\"font-size: 12pt;\"><span>You can view the task on the following link</span>: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task (Sent to Staff)', 'You are added as follower on task - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}<br /></span><br /><span style=\"font-size: 12pt;\">You have been added as follower on the following task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname}<br /><br />A comment has been made on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(17, 'tasks', 'task-added-attachment', 'english', 'New Attachment(s) on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname}<br /><br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(18, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(19, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(20, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
(21, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal With Number {proposal_number} Created', 'Dear {proposal_proposal_to}<br /><br />Please find our attached proposal.<br /><br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Please don\'t hesitate to comment online if you have any questions.<br /><br />We look forward to your communication.<br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(22, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(23, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(24, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment Â (Sent to Customer/Lead)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(25, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(26, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank for for accepting the estimate.</span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to doing business with you.</span><br /> <br /><span style=\"font-size: 12pt;\">We will contact you as soon as possible.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(27, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /><br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(28, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style=\"font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the {contract_subject} attached.<br /><br />Description: {contract_description}<br /><br /></span><span style=\"font-size: 12pt;\">Looking forward to hear from you.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(29, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(30, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket #</strong>: <a href=\"{ticket_public_url}\">{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(31, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created - {project_name}', '<p>Hi {staff_firstname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(32, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(33, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File(s) Uploaded (Sent to Customer Contacts)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(34, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File(s) Uploaded (Sent to Project Members)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello&nbsp;{staff_firstname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(35, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(36, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hi {staff_firstname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(37, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hi {staff_firstname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href=\"{project_link}\">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(38, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(39, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(40, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hi {staff_firstname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href=\"{admin_url}\">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(41, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(42, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style=\"font-size: 14pt;\">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(43, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style=\"font-size: 14pt;\">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to set up your new password:<br /><br /><a href=\"{set_password_url}\">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br />Please set your new password in <strong>48 hours</strong>. After that, you won\'t be able to set your password because this link will expire.<br /><br />You can login at: <a href=\"{crm_url}\">{crm_url}</a><br />Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(44, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style=\"font-size: 14pt;\">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(45, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style=\"font-size: 14pt;\"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(46, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(47, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment(s) on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(48, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(49, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(50, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(51, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style=\"font-size: 12pt;\">Hi</span></p>\r\n<p><span style=\"font-size: 12pt;\">A new support ticket&nbsp;has been assigned to you.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(52, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
(53, 'leads', 'new-web-to-lead-form-submitted', 'english', 'Web to lead form submitted - Sent to lead', '{lead_name} - We Received Your Request', 'Hello {lead_name}.<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(54, 'staff', 'two-factor-authentication', 'english', 'Two Factor Authentication', 'Confirm Your Login', '<p>Hi {staff_firstname}</p>\r\n<p style=\"text-align: left;\">You received this email because you have enabled two factor authentication in your account.<br />Use the following code to confirm your login:</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\"><strong>{two_factor_auth_code}<br /><br /></strong><span style=\"font-size: 12pt;\">{email_signature}</span><strong><br /><br /><br /><br /></strong></span></p>', '{companyname} | CRM', '', 0, 1, 0),
(55, 'project', 'project-finished-to-customer', 'english', 'Project Marked as Finished (Sent to Customer Contacts)', 'Project Marked as Finished', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>You are receiving this email because project&nbsp;<strong>{project_name}</strong> has been marked as finished. This project is assigned under your company and we just wanted to keep you up to date.<br /><br />You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>If you have any questions don\'t hesitate to contact us.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(56, 'credit_note', 'credit-note-send-to-client', 'english', 'Send Credit Note To Email', 'Credit Note With Number #{credit_note_number} Created', 'Dear&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have attached the credit note with number <strong>#{credit_note_number} </strong>for your reference.<br /><br /><strong>Date:</strong>&nbsp;{credit_note_date}<br /><strong>Total Amount:</strong>&nbsp;{credit_note_total}<br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(57, 'tasks', 'task-status-change-to-staff', 'english', 'Task Status Changed (Sent to Staff)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(58, 'tasks', 'task-status-change-to-contacts', 'english', 'Task Status Changed (Sent to Customer Contacts)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(59, 'staff', 'reminder-email-staff', 'english', 'Staff Reminder Email', 'You Have a New Reminder!', '<p>Hello&nbsp;{staff_firstname}<br /><br /><strong>You have a new reminder&nbsp;linked to&nbsp;{staff_reminder_relation_name}!<br /><br />Reminder description:</strong><br />{staff_reminder_description}<br /><br />Click <a href=\"{staff_reminder_relation_link}\">here</a> to view&nbsp;<a href=\"{staff_reminder_relation_link}\">{staff_reminder_relation_name}</a><br /><br />Best Regards<br /><br /></p>', '{companyname} | CRM', '', 0, 1, 0),
(60, 'contract', 'contract-comment-to-client', 'english', 'New Comment Â (Sent to Customer Contacts)', 'New Contract Comment', 'Dear {contact_firstname} {contact_lastname}<br /> <br />A new comment has been made on the following contract: <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(61, 'contract', 'contract-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Contract Comment', 'Hi {staff_firstname}<br /><br />A new comment has been made to the contract&nbsp;<strong>{contract_subject}</strong><br /><br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(62, 'subscriptions', 'send-subscription', 'english', 'Send Subscription to Customer', 'Subscription Created', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have prepared the subscription&nbsp;<strong>{subscription_name}</strong> for your company.<br /><br />Click <a href=\"{subscription_link}\">here</a> to review the subscription and subscribe.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(63, 'subscriptions', 'subscription-payment-failed', 'english', 'Subscription Payment Failed', 'Your most recent invoice payment failed', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br br=\"\" />Unfortunately, your most recent invoice payment for&nbsp;<strong>{subscription_name}</strong> was declined.<br /><br />This could be due to a change in your card number, your card expiring,<br />cancellation of your credit card, or the card issuer not recognizing the<br />payment and therefore taking action to prevent it.<br /><br />Please update your payment information as soon as possible by logging in here:<br /><a href=\"{crm_url}/login\">{crm_url}/login</a><br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(64, 'subscriptions', 'subscription-canceled', 'english', 'Subscription Canceled (Sent to customer primary contact)', 'Your subscription has been canceled', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />Your subscription&nbsp;<strong>{subscription_name} </strong>has been canceled, if you have any questions don\'t hesitate to contact us.<br /><br />It was a pleasure doing business with you.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(65, 'subscriptions', 'subscription-payment-succeeded', 'english', 'Subscription Payment Succeeded (Sent to customer primary contact)', 'Subscription  Payment Receipt - {subscription_name}', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />This email is to let you know that we received your payment for subscription&nbsp;<strong>{subscription_name}&nbsp;</strong>of&nbsp;<strong><span>{payment_total}<br /><br /></span></strong>The invoice associated with it is now with status&nbsp;<strong>{invoice_status}<br /></strong><br />Thank you for your confidence.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(66, 'contract', 'contract-expiration-to-staff', 'english', 'Contract Expiration Reminder (Sent to Staff)', 'Contract Expiration Reminder', 'Hi {staff_firstname}<br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(67, 'gdpr', 'gdpr-removal-request', 'english', 'Removal Request From Contact (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by&nbsp;{contact_firstname} {contact_lastname}<br /><br />You can review this request and take proper actions directly from the admin area.', '{companyname} | CRM', '', 0, 1, 0),
(68, 'gdpr', 'gdpr-removal-request-lead', 'english', 'Removal Request From Lead (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by {lead_name}<br /><br />You can review this request and take proper actions directly from the admin area.<br /><br />To view the lead inside the admin area click here:&nbsp;<a href=\"{lead_link}\">{lead_link}</a>', '{companyname} | CRM', '', 0, 1, 0),
(69, 'client', 'client-registration-confirmed', 'english', 'Customer Registration Confirmed', 'Your registration is confirmed', '<p>Dear {contact_firstname} {contact_lastname}<br /><br />We just wanted to let you know that your registration at&nbsp;{companyname} is successfully confirmed and your account is now active.<br /><br />You can login at&nbsp;<a href=\"{crm_url}\">{crm_url}</a> with the email and password you provided during registration.<br /><br />Please contact us if you need any help.<br /><br />Kind Regards, <br />{email_signature}</p>\r\n<p><br />(This is an automated email, so please don\'t reply to this email address)</p>', '{companyname} | CRM', '', 0, 1, 0),
(70, 'contract', 'contract-signed-to-staff', 'english', 'Contract Signed (Sent to Staff)', 'Customer Signed a Contract', 'Hi {staff_firstname}<br /><br />A contract with subject&nbsp;<strong>{contract_subject} </strong>has been successfully signed by the customer.<br /><br />You can view the contract at the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(71, 'subscriptions', 'customer-subscribed-to-staff', 'english', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator)', 'Customer Subscribed to a Subscription', 'The customer <strong>{client_company}</strong> subscribed to a subscription with name&nbsp;<strong>{subscription_name}</strong><br /><br /><strong>ID</strong>:&nbsp;{subscription_id}<br /><strong>Subscription name</strong>:&nbsp;{subscription_name}<br /><strong>Subscription description</strong>:&nbsp;{subscription_description}<br /><br />You can view the subscription by clicking <a href=\"{subscription_link}\">here</a><br />\r\n<div style=\"text-align: center;\"><span style=\"font-size: 10pt;\">&nbsp;</span></div>\r\nBest Regards,<br />{email_signature}<br /><br /><span style=\"font-size: 10pt;\"><span style=\"color: #999999;\">You are receiving this email because you are either administrator or you are creator of the subscription.</span></span>', '{companyname} | CRM', '', 0, 1, 0),
(72, 'client', 'contact-verification-email', 'english', 'Email Verification (Sent to Contact After Registration)', 'Verify Email Address', '<p>Hello&nbsp;{contact_firstname}<br /><br />Please click the button below to verify your email address.<br /><br /><a href=\"{email_verification_url}\">Verify Email Address</a><br /><br />If you did not create an account, no further action is required</p>\r\n<p><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(73, 'client', 'new-customer-profile-file-uploaded-to-staff', 'english', 'New Customer Profile File(s) Uploaded (Sent to Staff)', 'Customer Uploaded New File(s) in Profile', 'Hi!<br /><br />New file(s) is uploaded into the customer ({client_company}) profile by&nbsp;{contact_firstname}<br /><br />You can check the uploaded files into the admin area by clicking <a href=\"{customer_profile_files_admin_link}\">here</a> or at the following link:&nbsp;{customer_profile_files_admin_link}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(74, 'staff', 'event-notification-to-staff', 'english', 'Event Notification (Calendar)', 'Upcoming Event - {event_title}', 'Hi {staff_firstname}! <br /><br />This is a reminder for event <a href=\\\"{event_link}\\\">{event_title}</a> scheduled at {event_start_date}. <br /><br />Regards.', '', '', 0, 1, 0),
(75, 'subscriptions', 'subscription-payment-requires-action', 'english', 'Credit Card Authorization Required - SCA', 'Important: Confirm your subscription {subscription_name} payment', '<p>Hello {contact_firstname}</p>\r\n<p><strong>Your bank sometimes requires an additional step to make sure an online transaction was authorized.</strong><br /><br />Because of European regulation to protect consumers, many online payments now require two-factor authentication. Your bank ultimately decides when authentication is required to confirm a payment, but you may notice this step when you start paying for a service or when the cost changes.<br /><br />In order to pay the subscription <strong>{subscription_name}</strong>, you will need to&nbsp;confirm your payment by clicking on the follow link: <strong><a href=\"{subscription_authorize_payment_link}\">{subscription_authorize_payment_link}</a></strong><br /><br />To view the subscription, please click at the following link: <a href=\"{subscription_link}\"><span>{subscription_link}</span></a><br />or you can login in our dedicated area here: <a href=\"{crm_url}/login\">{crm_url}/login</a> in case you want to update your credit card or view the subscriptions you are subscribed.<br /><br />Best Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(76, 'client', 'new-client-created', 'bulgarian', 'New Contact Added/Registered (Welcome Email) [bulgarian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(77, 'invoice', 'invoice-send-to-client', 'bulgarian', 'Send Invoice to Customer [bulgarian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(78, 'ticket', 'new-ticket-opened-admin', 'bulgarian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [bulgarian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(79, 'ticket', 'ticket-reply', 'bulgarian', 'Ticket Reply (Sent to Customer) [bulgarian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(80, 'ticket', 'ticket-autoresponse', 'bulgarian', 'New Ticket Opened - Autoresponse [bulgarian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(81, 'invoice', 'invoice-payment-recorded', 'bulgarian', 'Invoice Payment Recorded (Sent to Customer) [bulgarian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(82, 'invoice', 'invoice-overdue-notice', 'bulgarian', 'Invoice Overdue Notice [bulgarian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(83, 'invoice', 'invoice-already-send', 'bulgarian', 'Invoice Already Sent to Customer [bulgarian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(84, 'ticket', 'new-ticket-created-staff', 'bulgarian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [bulgarian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(85, 'estimate', 'estimate-send-to-client', 'bulgarian', 'Send Estimate to Customer [bulgarian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(86, 'ticket', 'ticket-reply-to-admin', 'bulgarian', 'Ticket Reply (Sent to Staff) [bulgarian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(87, 'estimate', 'estimate-already-send', 'bulgarian', 'Estimate Already Sent to Customer [bulgarian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(88, 'contract', 'contract-expiration', 'bulgarian', 'Contract Expiration Reminder (Sent to Customer Contacts) [bulgarian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(89, 'tasks', 'task-assigned', 'bulgarian', 'New Task Assigned (Sent to Staff) [bulgarian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(90, 'tasks', 'task-added-as-follower', 'bulgarian', 'Staff Member Added as Follower on Task (Sent to Staff) [bulgarian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(91, 'tasks', 'task-commented', 'bulgarian', 'New Comment on Task (Sent to Staff) [bulgarian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(92, 'tasks', 'task-added-attachment', 'bulgarian', 'New Attachment(s) on Task (Sent to Staff) [bulgarian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(93, 'estimate', 'estimate-declined-to-staff', 'bulgarian', 'Estimate Declined (Sent to Staff) [bulgarian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(94, 'estimate', 'estimate-accepted-to-staff', 'bulgarian', 'Estimate Accepted (Sent to Staff) [bulgarian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(95, 'proposals', 'proposal-client-accepted', 'bulgarian', 'Customer Action - Accepted (Sent to Staff) [bulgarian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(96, 'proposals', 'proposal-send-to-customer', 'bulgarian', 'Send Proposal to Customer [bulgarian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(97, 'proposals', 'proposal-client-declined', 'bulgarian', 'Customer Action - Declined (Sent to Staff) [bulgarian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(98, 'proposals', 'proposal-client-thank-you', 'bulgarian', 'Thank You Email (Sent to Customer After Accept) [bulgarian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(99, 'proposals', 'proposal-comment-to-client', 'bulgarian', 'New Comment Â (Sent to Customer/Lead) [bulgarian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(100, 'proposals', 'proposal-comment-to-admin', 'bulgarian', 'New Comment (Sent to Staff)  [bulgarian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(101, 'estimate', 'estimate-thank-you-to-customer', 'bulgarian', 'Thank You Email (Sent to Customer After Accept) [bulgarian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(102, 'tasks', 'task-deadline-notification', 'bulgarian', 'Task Deadline Reminder - Sent to Assigned Members [bulgarian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(103, 'contract', 'send-contract', 'bulgarian', 'Send Contract to Customer [bulgarian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(104, 'invoice', 'invoice-payment-recorded-to-staff', 'bulgarian', 'Invoice Payment Recorded (Sent to Staff) [bulgarian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(105, 'ticket', 'auto-close-ticket', 'bulgarian', 'Auto Close Ticket [bulgarian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(106, 'project', 'new-project-discussion-created-to-staff', 'bulgarian', 'New Project Discussion (Sent to Project Members) [bulgarian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(107, 'project', 'new-project-discussion-created-to-customer', 'bulgarian', 'New Project Discussion (Sent to Customer Contacts) [bulgarian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(108, 'project', 'new-project-file-uploaded-to-customer', 'bulgarian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [bulgarian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(109, 'project', 'new-project-file-uploaded-to-staff', 'bulgarian', 'New Project File(s) Uploaded (Sent to Project Members) [bulgarian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(110, 'project', 'new-project-discussion-comment-to-customer', 'bulgarian', 'New Discussion Comment  (Sent to Customer Contacts) [bulgarian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(111, 'project', 'new-project-discussion-comment-to-staff', 'bulgarian', 'New Discussion Comment (Sent to Project Members) [bulgarian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(112, 'project', 'staff-added-as-project-member', 'bulgarian', 'Staff Added as Project Member [bulgarian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(113, 'estimate', 'estimate-expiry-reminder', 'bulgarian', 'Estimate Expiration Reminder [bulgarian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(114, 'proposals', 'proposal-expiry-reminder', 'bulgarian', 'Proposal Expiration Reminder [bulgarian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(115, 'staff', 'new-staff-created', 'bulgarian', 'New Staff Created (Welcome Email) [bulgarian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(116, 'client', 'contact-forgot-password', 'bulgarian', 'Forgot Password [bulgarian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(117, 'client', 'contact-password-reseted', 'bulgarian', 'Password Reset - Confirmation [bulgarian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(118, 'client', 'contact-set-password', 'bulgarian', 'Set New Password [bulgarian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(119, 'staff', 'staff-forgot-password', 'bulgarian', 'Forgot Password [bulgarian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(120, 'staff', 'staff-password-reseted', 'bulgarian', 'Password Reset - Confirmation [bulgarian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(121, 'project', 'assigned-to-project', 'bulgarian', 'New Project Created (Sent to Customer Contacts) [bulgarian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(122, 'tasks', 'task-added-attachment-to-contacts', 'bulgarian', 'New Attachment(s) on Task (Sent to Customer Contacts) [bulgarian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(123, 'tasks', 'task-commented-to-contacts', 'bulgarian', 'New Comment on Task (Sent to Customer Contacts) [bulgarian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(124, 'leads', 'new-lead-assigned', 'bulgarian', 'New Lead Assigned to Staff Member [bulgarian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(125, 'client', 'client-statement', 'bulgarian', 'Statement - Account Summary [bulgarian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(126, 'ticket', 'ticket-assigned-to-admin', 'bulgarian', 'New Ticket Assigned (Sent to Staff) [bulgarian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(127, 'client', 'new-client-registered-to-admin', 'bulgarian', 'New Customer Registration (Sent to admins) [bulgarian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(128, 'leads', 'new-web-to-lead-form-submitted', 'bulgarian', 'Web to lead form submitted - Sent to lead [bulgarian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(129, 'staff', 'two-factor-authentication', 'bulgarian', 'Two Factor Authentication [bulgarian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(130, 'project', 'project-finished-to-customer', 'bulgarian', 'Project Marked as Finished (Sent to Customer Contacts) [bulgarian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(131, 'credit_note', 'credit-note-send-to-client', 'bulgarian', 'Send Credit Note To Email [bulgarian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(132, 'tasks', 'task-status-change-to-staff', 'bulgarian', 'Task Status Changed (Sent to Staff) [bulgarian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(133, 'tasks', 'task-status-change-to-contacts', 'bulgarian', 'Task Status Changed (Sent to Customer Contacts) [bulgarian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(134, 'staff', 'reminder-email-staff', 'bulgarian', 'Staff Reminder Email [bulgarian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(135, 'contract', 'contract-comment-to-client', 'bulgarian', 'New Comment Â (Sent to Customer Contacts) [bulgarian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(136, 'contract', 'contract-comment-to-admin', 'bulgarian', 'New Comment (Sent to Staff)  [bulgarian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(137, 'subscriptions', 'send-subscription', 'bulgarian', 'Send Subscription to Customer [bulgarian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(138, 'subscriptions', 'subscription-payment-failed', 'bulgarian', 'Subscription Payment Failed [bulgarian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(139, 'subscriptions', 'subscription-canceled', 'bulgarian', 'Subscription Canceled (Sent to customer primary contact) [bulgarian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(140, 'subscriptions', 'subscription-payment-succeeded', 'bulgarian', 'Subscription Payment Succeeded (Sent to customer primary contact) [bulgarian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(141, 'contract', 'contract-expiration-to-staff', 'bulgarian', 'Contract Expiration Reminder (Sent to Staff) [bulgarian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(142, 'gdpr', 'gdpr-removal-request', 'bulgarian', 'Removal Request From Contact (Sent to administrators) [bulgarian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(143, 'gdpr', 'gdpr-removal-request-lead', 'bulgarian', 'Removal Request From Lead (Sent to administrators) [bulgarian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(144, 'client', 'client-registration-confirmed', 'bulgarian', 'Customer Registration Confirmed [bulgarian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(145, 'contract', 'contract-signed-to-staff', 'bulgarian', 'Contract Signed (Sent to Staff) [bulgarian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(146, 'subscriptions', 'customer-subscribed-to-staff', 'bulgarian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [bulgarian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(147, 'client', 'contact-verification-email', 'bulgarian', 'Email Verification (Sent to Contact After Registration) [bulgarian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(148, 'client', 'new-customer-profile-file-uploaded-to-staff', 'bulgarian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [bulgarian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(149, 'staff', 'event-notification-to-staff', 'bulgarian', 'Event Notification (Calendar) [bulgarian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(150, 'subscriptions', 'subscription-payment-requires-action', 'bulgarian', 'Credit Card Authorization Required - SCA [bulgarian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(151, 'client', 'new-client-created', 'dutch', 'New Contact Added/Registered (Welcome Email) [dutch]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(152, 'invoice', 'invoice-send-to-client', 'dutch', 'Send Invoice to Customer [dutch]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(153, 'ticket', 'new-ticket-opened-admin', 'dutch', 'New Ticket Opened (Opened by Staff, Sent to Customer) [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(154, 'ticket', 'ticket-reply', 'dutch', 'Ticket Reply (Sent to Customer) [dutch]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(155, 'ticket', 'ticket-autoresponse', 'dutch', 'New Ticket Opened - Autoresponse [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(156, 'invoice', 'invoice-payment-recorded', 'dutch', 'Invoice Payment Recorded (Sent to Customer) [dutch]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(157, 'invoice', 'invoice-overdue-notice', 'dutch', 'Invoice Overdue Notice [dutch]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(158, 'invoice', 'invoice-already-send', 'dutch', 'Invoice Already Sent to Customer [dutch]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(159, 'ticket', 'new-ticket-created-staff', 'dutch', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [dutch]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(160, 'estimate', 'estimate-send-to-client', 'dutch', 'Send Estimate to Customer [dutch]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(161, 'ticket', 'ticket-reply-to-admin', 'dutch', 'Ticket Reply (Sent to Staff) [dutch]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(162, 'estimate', 'estimate-already-send', 'dutch', 'Estimate Already Sent to Customer [dutch]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(163, 'contract', 'contract-expiration', 'dutch', 'Contract Expiration Reminder (Sent to Customer Contacts) [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(164, 'tasks', 'task-assigned', 'dutch', 'New Task Assigned (Sent to Staff) [dutch]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(165, 'tasks', 'task-added-as-follower', 'dutch', 'Staff Member Added as Follower on Task (Sent to Staff) [dutch]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(166, 'tasks', 'task-commented', 'dutch', 'New Comment on Task (Sent to Staff) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(167, 'tasks', 'task-added-attachment', 'dutch', 'New Attachment(s) on Task (Sent to Staff) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(168, 'estimate', 'estimate-declined-to-staff', 'dutch', 'Estimate Declined (Sent to Staff) [dutch]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(169, 'estimate', 'estimate-accepted-to-staff', 'dutch', 'Estimate Accepted (Sent to Staff) [dutch]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(170, 'proposals', 'proposal-client-accepted', 'dutch', 'Customer Action - Accepted (Sent to Staff) [dutch]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(171, 'proposals', 'proposal-send-to-customer', 'dutch', 'Send Proposal to Customer [dutch]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(172, 'proposals', 'proposal-client-declined', 'dutch', 'Customer Action - Declined (Sent to Staff) [dutch]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(173, 'proposals', 'proposal-client-thank-you', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(174, 'proposals', 'proposal-comment-to-client', 'dutch', 'New Comment Â (Sent to Customer/Lead) [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(175, 'proposals', 'proposal-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(176, 'estimate', 'estimate-thank-you-to-customer', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(177, 'tasks', 'task-deadline-notification', 'dutch', 'Task Deadline Reminder - Sent to Assigned Members [dutch]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(178, 'contract', 'send-contract', 'dutch', 'Send Contract to Customer [dutch]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(179, 'invoice', 'invoice-payment-recorded-to-staff', 'dutch', 'Invoice Payment Recorded (Sent to Staff) [dutch]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(180, 'ticket', 'auto-close-ticket', 'dutch', 'Auto Close Ticket [dutch]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(181, 'project', 'new-project-discussion-created-to-staff', 'dutch', 'New Project Discussion (Sent to Project Members) [dutch]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(182, 'project', 'new-project-discussion-created-to-customer', 'dutch', 'New Project Discussion (Sent to Customer Contacts) [dutch]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(183, 'project', 'new-project-file-uploaded-to-customer', 'dutch', 'New Project File(s) Uploaded (Sent to Customer Contacts) [dutch]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(184, 'project', 'new-project-file-uploaded-to-staff', 'dutch', 'New Project File(s) Uploaded (Sent to Project Members) [dutch]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(185, 'project', 'new-project-discussion-comment-to-customer', 'dutch', 'New Discussion Comment  (Sent to Customer Contacts) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(186, 'project', 'new-project-discussion-comment-to-staff', 'dutch', 'New Discussion Comment (Sent to Project Members) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(187, 'project', 'staff-added-as-project-member', 'dutch', 'Staff Added as Project Member [dutch]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(188, 'estimate', 'estimate-expiry-reminder', 'dutch', 'Estimate Expiration Reminder [dutch]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(189, 'proposals', 'proposal-expiry-reminder', 'dutch', 'Proposal Expiration Reminder [dutch]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(190, 'staff', 'new-staff-created', 'dutch', 'New Staff Created (Welcome Email) [dutch]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(191, 'client', 'contact-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(192, 'client', 'contact-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(193, 'client', 'contact-set-password', 'dutch', 'Set New Password [dutch]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(194, 'staff', 'staff-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(195, 'staff', 'staff-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(196, 'project', 'assigned-to-project', 'dutch', 'New Project Created (Sent to Customer Contacts) [dutch]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(197, 'tasks', 'task-added-attachment-to-contacts', 'dutch', 'New Attachment(s) on Task (Sent to Customer Contacts) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(198, 'tasks', 'task-commented-to-contacts', 'dutch', 'New Comment on Task (Sent to Customer Contacts) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(199, 'leads', 'new-lead-assigned', 'dutch', 'New Lead Assigned to Staff Member [dutch]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(200, 'client', 'client-statement', 'dutch', 'Statement - Account Summary [dutch]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(201, 'ticket', 'ticket-assigned-to-admin', 'dutch', 'New Ticket Assigned (Sent to Staff) [dutch]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(202, 'client', 'new-client-registered-to-admin', 'dutch', 'New Customer Registration (Sent to admins) [dutch]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(203, 'leads', 'new-web-to-lead-form-submitted', 'dutch', 'Web to lead form submitted - Sent to lead [dutch]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(204, 'staff', 'two-factor-authentication', 'dutch', 'Two Factor Authentication [dutch]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(205, 'project', 'project-finished-to-customer', 'dutch', 'Project Marked as Finished (Sent to Customer Contacts) [dutch]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(206, 'credit_note', 'credit-note-send-to-client', 'dutch', 'Send Credit Note To Email [dutch]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(207, 'tasks', 'task-status-change-to-staff', 'dutch', 'Task Status Changed (Sent to Staff) [dutch]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(208, 'tasks', 'task-status-change-to-contacts', 'dutch', 'Task Status Changed (Sent to Customer Contacts) [dutch]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(209, 'staff', 'reminder-email-staff', 'dutch', 'Staff Reminder Email [dutch]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(210, 'contract', 'contract-comment-to-client', 'dutch', 'New Comment Â (Sent to Customer Contacts) [dutch]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(211, 'contract', 'contract-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(212, 'subscriptions', 'send-subscription', 'dutch', 'Send Subscription to Customer [dutch]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(213, 'subscriptions', 'subscription-payment-failed', 'dutch', 'Subscription Payment Failed [dutch]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(214, 'subscriptions', 'subscription-canceled', 'dutch', 'Subscription Canceled (Sent to customer primary contact) [dutch]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(215, 'subscriptions', 'subscription-payment-succeeded', 'dutch', 'Subscription Payment Succeeded (Sent to customer primary contact) [dutch]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(216, 'contract', 'contract-expiration-to-staff', 'dutch', 'Contract Expiration Reminder (Sent to Staff) [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(217, 'gdpr', 'gdpr-removal-request', 'dutch', 'Removal Request From Contact (Sent to administrators) [dutch]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(218, 'gdpr', 'gdpr-removal-request-lead', 'dutch', 'Removal Request From Lead (Sent to administrators) [dutch]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(219, 'client', 'client-registration-confirmed', 'dutch', 'Customer Registration Confirmed [dutch]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(220, 'contract', 'contract-signed-to-staff', 'dutch', 'Contract Signed (Sent to Staff) [dutch]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(221, 'subscriptions', 'customer-subscribed-to-staff', 'dutch', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [dutch]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(222, 'client', 'contact-verification-email', 'dutch', 'Email Verification (Sent to Contact After Registration) [dutch]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(223, 'client', 'new-customer-profile-file-uploaded-to-staff', 'dutch', 'New Customer Profile File(s) Uploaded (Sent to Staff) [dutch]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(224, 'staff', 'event-notification-to-staff', 'dutch', 'Event Notification (Calendar) [dutch]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(225, 'subscriptions', 'subscription-payment-requires-action', 'dutch', 'Credit Card Authorization Required - SCA [dutch]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(226, 'client', 'new-client-created', 'czech', 'New Contact Added/Registered (Welcome Email) [czech]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(227, 'invoice', 'invoice-send-to-client', 'czech', 'Send Invoice to Customer [czech]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(228, 'ticket', 'new-ticket-opened-admin', 'czech', 'New Ticket Opened (Opened by Staff, Sent to Customer) [czech]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(229, 'ticket', 'ticket-reply', 'czech', 'Ticket Reply (Sent to Customer) [czech]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(230, 'ticket', 'ticket-autoresponse', 'czech', 'New Ticket Opened - Autoresponse [czech]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(231, 'invoice', 'invoice-payment-recorded', 'czech', 'Invoice Payment Recorded (Sent to Customer) [czech]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(232, 'invoice', 'invoice-overdue-notice', 'czech', 'Invoice Overdue Notice [czech]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(233, 'invoice', 'invoice-already-send', 'czech', 'Invoice Already Sent to Customer [czech]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(234, 'ticket', 'new-ticket-created-staff', 'czech', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [czech]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(235, 'estimate', 'estimate-send-to-client', 'czech', 'Send Estimate to Customer [czech]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(236, 'ticket', 'ticket-reply-to-admin', 'czech', 'Ticket Reply (Sent to Staff) [czech]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(237, 'estimate', 'estimate-already-send', 'czech', 'Estimate Already Sent to Customer [czech]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(238, 'contract', 'contract-expiration', 'czech', 'Contract Expiration Reminder (Sent to Customer Contacts) [czech]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(239, 'tasks', 'task-assigned', 'czech', 'New Task Assigned (Sent to Staff) [czech]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(240, 'tasks', 'task-added-as-follower', 'czech', 'Staff Member Added as Follower on Task (Sent to Staff) [czech]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(241, 'tasks', 'task-commented', 'czech', 'New Comment on Task (Sent to Staff) [czech]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(242, 'tasks', 'task-added-attachment', 'czech', 'New Attachment(s) on Task (Sent to Staff) [czech]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(243, 'estimate', 'estimate-declined-to-staff', 'czech', 'Estimate Declined (Sent to Staff) [czech]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(244, 'estimate', 'estimate-accepted-to-staff', 'czech', 'Estimate Accepted (Sent to Staff) [czech]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(245, 'proposals', 'proposal-client-accepted', 'czech', 'Customer Action - Accepted (Sent to Staff) [czech]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(246, 'proposals', 'proposal-send-to-customer', 'czech', 'Send Proposal to Customer [czech]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(247, 'proposals', 'proposal-client-declined', 'czech', 'Customer Action - Declined (Sent to Staff) [czech]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(248, 'proposals', 'proposal-client-thank-you', 'czech', 'Thank You Email (Sent to Customer After Accept) [czech]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(249, 'proposals', 'proposal-comment-to-client', 'czech', 'New Comment Â (Sent to Customer/Lead) [czech]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(250, 'proposals', 'proposal-comment-to-admin', 'czech', 'New Comment (Sent to Staff)  [czech]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(251, 'estimate', 'estimate-thank-you-to-customer', 'czech', 'Thank You Email (Sent to Customer After Accept) [czech]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(252, 'tasks', 'task-deadline-notification', 'czech', 'Task Deadline Reminder - Sent to Assigned Members [czech]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(253, 'contract', 'send-contract', 'czech', 'Send Contract to Customer [czech]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(254, 'invoice', 'invoice-payment-recorded-to-staff', 'czech', 'Invoice Payment Recorded (Sent to Staff) [czech]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(255, 'ticket', 'auto-close-ticket', 'czech', 'Auto Close Ticket [czech]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(256, 'project', 'new-project-discussion-created-to-staff', 'czech', 'New Project Discussion (Sent to Project Members) [czech]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(257, 'project', 'new-project-discussion-created-to-customer', 'czech', 'New Project Discussion (Sent to Customer Contacts) [czech]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(258, 'project', 'new-project-file-uploaded-to-customer', 'czech', 'New Project File(s) Uploaded (Sent to Customer Contacts) [czech]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(259, 'project', 'new-project-file-uploaded-to-staff', 'czech', 'New Project File(s) Uploaded (Sent to Project Members) [czech]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(260, 'project', 'new-project-discussion-comment-to-customer', 'czech', 'New Discussion Comment  (Sent to Customer Contacts) [czech]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(261, 'project', 'new-project-discussion-comment-to-staff', 'czech', 'New Discussion Comment (Sent to Project Members) [czech]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(262, 'project', 'staff-added-as-project-member', 'czech', 'Staff Added as Project Member [czech]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(263, 'estimate', 'estimate-expiry-reminder', 'czech', 'Estimate Expiration Reminder [czech]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(264, 'proposals', 'proposal-expiry-reminder', 'czech', 'Proposal Expiration Reminder [czech]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(265, 'staff', 'new-staff-created', 'czech', 'New Staff Created (Welcome Email) [czech]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(266, 'client', 'contact-forgot-password', 'czech', 'Forgot Password [czech]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(267, 'client', 'contact-password-reseted', 'czech', 'Password Reset - Confirmation [czech]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(268, 'client', 'contact-set-password', 'czech', 'Set New Password [czech]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(269, 'staff', 'staff-forgot-password', 'czech', 'Forgot Password [czech]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(270, 'staff', 'staff-password-reseted', 'czech', 'Password Reset - Confirmation [czech]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(271, 'project', 'assigned-to-project', 'czech', 'New Project Created (Sent to Customer Contacts) [czech]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(272, 'tasks', 'task-added-attachment-to-contacts', 'czech', 'New Attachment(s) on Task (Sent to Customer Contacts) [czech]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(273, 'tasks', 'task-commented-to-contacts', 'czech', 'New Comment on Task (Sent to Customer Contacts) [czech]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(274, 'leads', 'new-lead-assigned', 'czech', 'New Lead Assigned to Staff Member [czech]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(275, 'client', 'client-statement', 'czech', 'Statement - Account Summary [czech]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(276, 'ticket', 'ticket-assigned-to-admin', 'czech', 'New Ticket Assigned (Sent to Staff) [czech]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(277, 'client', 'new-client-registered-to-admin', 'czech', 'New Customer Registration (Sent to admins) [czech]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(278, 'leads', 'new-web-to-lead-form-submitted', 'czech', 'Web to lead form submitted - Sent to lead [czech]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(279, 'staff', 'two-factor-authentication', 'czech', 'Two Factor Authentication [czech]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(280, 'project', 'project-finished-to-customer', 'czech', 'Project Marked as Finished (Sent to Customer Contacts) [czech]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(281, 'credit_note', 'credit-note-send-to-client', 'czech', 'Send Credit Note To Email [czech]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(282, 'tasks', 'task-status-change-to-staff', 'czech', 'Task Status Changed (Sent to Staff) [czech]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(283, 'tasks', 'task-status-change-to-contacts', 'czech', 'Task Status Changed (Sent to Customer Contacts) [czech]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(284, 'staff', 'reminder-email-staff', 'czech', 'Staff Reminder Email [czech]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(285, 'contract', 'contract-comment-to-client', 'czech', 'New Comment Â (Sent to Customer Contacts) [czech]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(286, 'contract', 'contract-comment-to-admin', 'czech', 'New Comment (Sent to Staff)  [czech]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(287, 'subscriptions', 'send-subscription', 'czech', 'Send Subscription to Customer [czech]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(288, 'subscriptions', 'subscription-payment-failed', 'czech', 'Subscription Payment Failed [czech]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(289, 'subscriptions', 'subscription-canceled', 'czech', 'Subscription Canceled (Sent to customer primary contact) [czech]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(290, 'subscriptions', 'subscription-payment-succeeded', 'czech', 'Subscription Payment Succeeded (Sent to customer primary contact) [czech]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(291, 'contract', 'contract-expiration-to-staff', 'czech', 'Contract Expiration Reminder (Sent to Staff) [czech]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(292, 'gdpr', 'gdpr-removal-request', 'czech', 'Removal Request From Contact (Sent to administrators) [czech]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(293, 'gdpr', 'gdpr-removal-request-lead', 'czech', 'Removal Request From Lead (Sent to administrators) [czech]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(294, 'client', 'client-registration-confirmed', 'czech', 'Customer Registration Confirmed [czech]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(295, 'contract', 'contract-signed-to-staff', 'czech', 'Contract Signed (Sent to Staff) [czech]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(296, 'subscriptions', 'customer-subscribed-to-staff', 'czech', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [czech]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(297, 'client', 'contact-verification-email', 'czech', 'Email Verification (Sent to Contact After Registration) [czech]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(298, 'client', 'new-customer-profile-file-uploaded-to-staff', 'czech', 'New Customer Profile File(s) Uploaded (Sent to Staff) [czech]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(299, 'staff', 'event-notification-to-staff', 'czech', 'Event Notification (Calendar) [czech]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(300, 'subscriptions', 'subscription-payment-requires-action', 'czech', 'Credit Card Authorization Required - SCA [czech]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(301, 'client', 'new-client-created', 'catalan', 'New Contact Added/Registered (Welcome Email) [catalan]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(302, 'invoice', 'invoice-send-to-client', 'catalan', 'Send Invoice to Customer [catalan]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(303, 'ticket', 'new-ticket-opened-admin', 'catalan', 'New Ticket Opened (Opened by Staff, Sent to Customer) [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(304, 'ticket', 'ticket-reply', 'catalan', 'Ticket Reply (Sent to Customer) [catalan]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(305, 'ticket', 'ticket-autoresponse', 'catalan', 'New Ticket Opened - Autoresponse [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(306, 'invoice', 'invoice-payment-recorded', 'catalan', 'Invoice Payment Recorded (Sent to Customer) [catalan]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(307, 'invoice', 'invoice-overdue-notice', 'catalan', 'Invoice Overdue Notice [catalan]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(308, 'invoice', 'invoice-already-send', 'catalan', 'Invoice Already Sent to Customer [catalan]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(309, 'ticket', 'new-ticket-created-staff', 'catalan', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [catalan]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(310, 'estimate', 'estimate-send-to-client', 'catalan', 'Send Estimate to Customer [catalan]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(311, 'ticket', 'ticket-reply-to-admin', 'catalan', 'Ticket Reply (Sent to Staff) [catalan]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(312, 'estimate', 'estimate-already-send', 'catalan', 'Estimate Already Sent to Customer [catalan]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(313, 'contract', 'contract-expiration', 'catalan', 'Contract Expiration Reminder (Sent to Customer Contacts) [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(314, 'tasks', 'task-assigned', 'catalan', 'New Task Assigned (Sent to Staff) [catalan]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(315, 'tasks', 'task-added-as-follower', 'catalan', 'Staff Member Added as Follower on Task (Sent to Staff) [catalan]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(316, 'tasks', 'task-commented', 'catalan', 'New Comment on Task (Sent to Staff) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(317, 'tasks', 'task-added-attachment', 'catalan', 'New Attachment(s) on Task (Sent to Staff) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(318, 'estimate', 'estimate-declined-to-staff', 'catalan', 'Estimate Declined (Sent to Staff) [catalan]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(319, 'estimate', 'estimate-accepted-to-staff', 'catalan', 'Estimate Accepted (Sent to Staff) [catalan]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(320, 'proposals', 'proposal-client-accepted', 'catalan', 'Customer Action - Accepted (Sent to Staff) [catalan]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(321, 'proposals', 'proposal-send-to-customer', 'catalan', 'Send Proposal to Customer [catalan]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(322, 'proposals', 'proposal-client-declined', 'catalan', 'Customer Action - Declined (Sent to Staff) [catalan]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(323, 'proposals', 'proposal-client-thank-you', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(324, 'proposals', 'proposal-comment-to-client', 'catalan', 'New Comment Â (Sent to Customer/Lead) [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(325, 'proposals', 'proposal-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(326, 'estimate', 'estimate-thank-you-to-customer', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(327, 'tasks', 'task-deadline-notification', 'catalan', 'Task Deadline Reminder - Sent to Assigned Members [catalan]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(328, 'contract', 'send-contract', 'catalan', 'Send Contract to Customer [catalan]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(329, 'invoice', 'invoice-payment-recorded-to-staff', 'catalan', 'Invoice Payment Recorded (Sent to Staff) [catalan]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(330, 'ticket', 'auto-close-ticket', 'catalan', 'Auto Close Ticket [catalan]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(331, 'project', 'new-project-discussion-created-to-staff', 'catalan', 'New Project Discussion (Sent to Project Members) [catalan]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(332, 'project', 'new-project-discussion-created-to-customer', 'catalan', 'New Project Discussion (Sent to Customer Contacts) [catalan]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(333, 'project', 'new-project-file-uploaded-to-customer', 'catalan', 'New Project File(s) Uploaded (Sent to Customer Contacts) [catalan]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(334, 'project', 'new-project-file-uploaded-to-staff', 'catalan', 'New Project File(s) Uploaded (Sent to Project Members) [catalan]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(335, 'project', 'new-project-discussion-comment-to-customer', 'catalan', 'New Discussion Comment  (Sent to Customer Contacts) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(336, 'project', 'new-project-discussion-comment-to-staff', 'catalan', 'New Discussion Comment (Sent to Project Members) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(337, 'project', 'staff-added-as-project-member', 'catalan', 'Staff Added as Project Member [catalan]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(338, 'estimate', 'estimate-expiry-reminder', 'catalan', 'Estimate Expiration Reminder [catalan]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(339, 'proposals', 'proposal-expiry-reminder', 'catalan', 'Proposal Expiration Reminder [catalan]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(340, 'staff', 'new-staff-created', 'catalan', 'New Staff Created (Welcome Email) [catalan]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(341, 'client', 'contact-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(342, 'client', 'contact-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(343, 'client', 'contact-set-password', 'catalan', 'Set New Password [catalan]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(344, 'staff', 'staff-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(345, 'staff', 'staff-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(346, 'project', 'assigned-to-project', 'catalan', 'New Project Created (Sent to Customer Contacts) [catalan]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(347, 'tasks', 'task-added-attachment-to-contacts', 'catalan', 'New Attachment(s) on Task (Sent to Customer Contacts) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(348, 'tasks', 'task-commented-to-contacts', 'catalan', 'New Comment on Task (Sent to Customer Contacts) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(349, 'leads', 'new-lead-assigned', 'catalan', 'New Lead Assigned to Staff Member [catalan]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(350, 'client', 'client-statement', 'catalan', 'Statement - Account Summary [catalan]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(351, 'ticket', 'ticket-assigned-to-admin', 'catalan', 'New Ticket Assigned (Sent to Staff) [catalan]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(352, 'client', 'new-client-registered-to-admin', 'catalan', 'New Customer Registration (Sent to admins) [catalan]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(353, 'leads', 'new-web-to-lead-form-submitted', 'catalan', 'Web to lead form submitted - Sent to lead [catalan]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(354, 'staff', 'two-factor-authentication', 'catalan', 'Two Factor Authentication [catalan]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(355, 'project', 'project-finished-to-customer', 'catalan', 'Project Marked as Finished (Sent to Customer Contacts) [catalan]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(356, 'credit_note', 'credit-note-send-to-client', 'catalan', 'Send Credit Note To Email [catalan]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(357, 'tasks', 'task-status-change-to-staff', 'catalan', 'Task Status Changed (Sent to Staff) [catalan]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(358, 'tasks', 'task-status-change-to-contacts', 'catalan', 'Task Status Changed (Sent to Customer Contacts) [catalan]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(359, 'staff', 'reminder-email-staff', 'catalan', 'Staff Reminder Email [catalan]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(360, 'contract', 'contract-comment-to-client', 'catalan', 'New Comment Â (Sent to Customer Contacts) [catalan]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(361, 'contract', 'contract-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(362, 'subscriptions', 'send-subscription', 'catalan', 'Send Subscription to Customer [catalan]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(363, 'subscriptions', 'subscription-payment-failed', 'catalan', 'Subscription Payment Failed [catalan]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(364, 'subscriptions', 'subscription-canceled', 'catalan', 'Subscription Canceled (Sent to customer primary contact) [catalan]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(365, 'subscriptions', 'subscription-payment-succeeded', 'catalan', 'Subscription Payment Succeeded (Sent to customer primary contact) [catalan]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(366, 'contract', 'contract-expiration-to-staff', 'catalan', 'Contract Expiration Reminder (Sent to Staff) [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(367, 'gdpr', 'gdpr-removal-request', 'catalan', 'Removal Request From Contact (Sent to administrators) [catalan]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(368, 'gdpr', 'gdpr-removal-request-lead', 'catalan', 'Removal Request From Lead (Sent to administrators) [catalan]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(369, 'client', 'client-registration-confirmed', 'catalan', 'Customer Registration Confirmed [catalan]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(370, 'contract', 'contract-signed-to-staff', 'catalan', 'Contract Signed (Sent to Staff) [catalan]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(371, 'subscriptions', 'customer-subscribed-to-staff', 'catalan', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [catalan]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(372, 'client', 'contact-verification-email', 'catalan', 'Email Verification (Sent to Contact After Registration) [catalan]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(373, 'client', 'new-customer-profile-file-uploaded-to-staff', 'catalan', 'New Customer Profile File(s) Uploaded (Sent to Staff) [catalan]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(374, 'staff', 'event-notification-to-staff', 'catalan', 'Event Notification (Calendar) [catalan]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(375, 'subscriptions', 'subscription-payment-requires-action', 'catalan', 'Credit Card Authorization Required - SCA [catalan]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(376, 'client', 'new-client-created', 'vietnamese', 'New Contact Added/Registered (Welcome Email) [vietnamese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(377, 'invoice', 'invoice-send-to-client', 'vietnamese', 'Send Invoice to Customer [vietnamese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(378, 'ticket', 'new-ticket-opened-admin', 'vietnamese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(379, 'ticket', 'ticket-reply', 'vietnamese', 'Ticket Reply (Sent to Customer) [vietnamese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(380, 'ticket', 'ticket-autoresponse', 'vietnamese', 'New Ticket Opened - Autoresponse [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(381, 'invoice', 'invoice-payment-recorded', 'vietnamese', 'Invoice Payment Recorded (Sent to Customer) [vietnamese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(382, 'invoice', 'invoice-overdue-notice', 'vietnamese', 'Invoice Overdue Notice [vietnamese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(383, 'invoice', 'invoice-already-send', 'vietnamese', 'Invoice Already Sent to Customer [vietnamese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(384, 'ticket', 'new-ticket-created-staff', 'vietnamese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [vietnamese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(385, 'estimate', 'estimate-send-to-client', 'vietnamese', 'Send Estimate to Customer [vietnamese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(386, 'ticket', 'ticket-reply-to-admin', 'vietnamese', 'Ticket Reply (Sent to Staff) [vietnamese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(387, 'estimate', 'estimate-already-send', 'vietnamese', 'Estimate Already Sent to Customer [vietnamese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(388, 'contract', 'contract-expiration', 'vietnamese', 'Contract Expiration Reminder (Sent to Customer Contacts) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(389, 'tasks', 'task-assigned', 'vietnamese', 'New Task Assigned (Sent to Staff) [vietnamese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(390, 'tasks', 'task-added-as-follower', 'vietnamese', 'Staff Member Added as Follower on Task (Sent to Staff) [vietnamese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(391, 'tasks', 'task-commented', 'vietnamese', 'New Comment on Task (Sent to Staff) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(392, 'tasks', 'task-added-attachment', 'vietnamese', 'New Attachment(s) on Task (Sent to Staff) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(393, 'estimate', 'estimate-declined-to-staff', 'vietnamese', 'Estimate Declined (Sent to Staff) [vietnamese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(394, 'estimate', 'estimate-accepted-to-staff', 'vietnamese', 'Estimate Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(395, 'proposals', 'proposal-client-accepted', 'vietnamese', 'Customer Action - Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(396, 'proposals', 'proposal-send-to-customer', 'vietnamese', 'Send Proposal to Customer [vietnamese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(397, 'proposals', 'proposal-client-declined', 'vietnamese', 'Customer Action - Declined (Sent to Staff) [vietnamese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(398, 'proposals', 'proposal-client-thank-you', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(399, 'proposals', 'proposal-comment-to-client', 'vietnamese', 'New Comment Â (Sent to Customer/Lead) [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(400, 'proposals', 'proposal-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(401, 'estimate', 'estimate-thank-you-to-customer', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(402, 'tasks', 'task-deadline-notification', 'vietnamese', 'Task Deadline Reminder - Sent to Assigned Members [vietnamese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(403, 'contract', 'send-contract', 'vietnamese', 'Send Contract to Customer [vietnamese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(404, 'invoice', 'invoice-payment-recorded-to-staff', 'vietnamese', 'Invoice Payment Recorded (Sent to Staff) [vietnamese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(405, 'ticket', 'auto-close-ticket', 'vietnamese', 'Auto Close Ticket [vietnamese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(406, 'project', 'new-project-discussion-created-to-staff', 'vietnamese', 'New Project Discussion (Sent to Project Members) [vietnamese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(407, 'project', 'new-project-discussion-created-to-customer', 'vietnamese', 'New Project Discussion (Sent to Customer Contacts) [vietnamese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(408, 'project', 'new-project-file-uploaded-to-customer', 'vietnamese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [vietnamese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(409, 'project', 'new-project-file-uploaded-to-staff', 'vietnamese', 'New Project File(s) Uploaded (Sent to Project Members) [vietnamese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(410, 'project', 'new-project-discussion-comment-to-customer', 'vietnamese', 'New Discussion Comment  (Sent to Customer Contacts) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(411, 'project', 'new-project-discussion-comment-to-staff', 'vietnamese', 'New Discussion Comment (Sent to Project Members) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(412, 'project', 'staff-added-as-project-member', 'vietnamese', 'Staff Added as Project Member [vietnamese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(413, 'estimate', 'estimate-expiry-reminder', 'vietnamese', 'Estimate Expiration Reminder [vietnamese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(414, 'proposals', 'proposal-expiry-reminder', 'vietnamese', 'Proposal Expiration Reminder [vietnamese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(415, 'staff', 'new-staff-created', 'vietnamese', 'New Staff Created (Welcome Email) [vietnamese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(416, 'client', 'contact-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(417, 'client', 'contact-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(418, 'client', 'contact-set-password', 'vietnamese', 'Set New Password [vietnamese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(419, 'staff', 'staff-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(420, 'staff', 'staff-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(421, 'project', 'assigned-to-project', 'vietnamese', 'New Project Created (Sent to Customer Contacts) [vietnamese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(422, 'tasks', 'task-added-attachment-to-contacts', 'vietnamese', 'New Attachment(s) on Task (Sent to Customer Contacts) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(423, 'tasks', 'task-commented-to-contacts', 'vietnamese', 'New Comment on Task (Sent to Customer Contacts) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(424, 'leads', 'new-lead-assigned', 'vietnamese', 'New Lead Assigned to Staff Member [vietnamese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(425, 'client', 'client-statement', 'vietnamese', 'Statement - Account Summary [vietnamese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(426, 'ticket', 'ticket-assigned-to-admin', 'vietnamese', 'New Ticket Assigned (Sent to Staff) [vietnamese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(427, 'client', 'new-client-registered-to-admin', 'vietnamese', 'New Customer Registration (Sent to admins) [vietnamese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(428, 'leads', 'new-web-to-lead-form-submitted', 'vietnamese', 'Web to lead form submitted - Sent to lead [vietnamese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(429, 'staff', 'two-factor-authentication', 'vietnamese', 'Two Factor Authentication [vietnamese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(430, 'project', 'project-finished-to-customer', 'vietnamese', 'Project Marked as Finished (Sent to Customer Contacts) [vietnamese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(431, 'credit_note', 'credit-note-send-to-client', 'vietnamese', 'Send Credit Note To Email [vietnamese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(432, 'tasks', 'task-status-change-to-staff', 'vietnamese', 'Task Status Changed (Sent to Staff) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(433, 'tasks', 'task-status-change-to-contacts', 'vietnamese', 'Task Status Changed (Sent to Customer Contacts) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(434, 'staff', 'reminder-email-staff', 'vietnamese', 'Staff Reminder Email [vietnamese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(435, 'contract', 'contract-comment-to-client', 'vietnamese', 'New Comment Â (Sent to Customer Contacts) [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(436, 'contract', 'contract-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(437, 'subscriptions', 'send-subscription', 'vietnamese', 'Send Subscription to Customer [vietnamese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(438, 'subscriptions', 'subscription-payment-failed', 'vietnamese', 'Subscription Payment Failed [vietnamese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(439, 'subscriptions', 'subscription-canceled', 'vietnamese', 'Subscription Canceled (Sent to customer primary contact) [vietnamese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(440, 'subscriptions', 'subscription-payment-succeeded', 'vietnamese', 'Subscription Payment Succeeded (Sent to customer primary contact) [vietnamese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(441, 'contract', 'contract-expiration-to-staff', 'vietnamese', 'Contract Expiration Reminder (Sent to Staff) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(442, 'gdpr', 'gdpr-removal-request', 'vietnamese', 'Removal Request From Contact (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(443, 'gdpr', 'gdpr-removal-request-lead', 'vietnamese', 'Removal Request From Lead (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(444, 'client', 'client-registration-confirmed', 'vietnamese', 'Customer Registration Confirmed [vietnamese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(445, 'contract', 'contract-signed-to-staff', 'vietnamese', 'Contract Signed (Sent to Staff) [vietnamese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(446, 'subscriptions', 'customer-subscribed-to-staff', 'vietnamese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [vietnamese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(447, 'client', 'contact-verification-email', 'vietnamese', 'Email Verification (Sent to Contact After Registration) [vietnamese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(448, 'client', 'new-customer-profile-file-uploaded-to-staff', 'vietnamese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [vietnamese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(449, 'staff', 'event-notification-to-staff', 'vietnamese', 'Event Notification (Calendar) [vietnamese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(450, 'subscriptions', 'subscription-payment-requires-action', 'vietnamese', 'Credit Card Authorization Required - SCA [vietnamese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(451, 'client', 'new-client-created', 'japanese', 'New Contact Added/Registered (Welcome Email) [japanese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(452, 'invoice', 'invoice-send-to-client', 'japanese', 'Send Invoice to Customer [japanese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(453, 'ticket', 'new-ticket-opened-admin', 'japanese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(454, 'ticket', 'ticket-reply', 'japanese', 'Ticket Reply (Sent to Customer) [japanese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(455, 'ticket', 'ticket-autoresponse', 'japanese', 'New Ticket Opened - Autoresponse [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(456, 'invoice', 'invoice-payment-recorded', 'japanese', 'Invoice Payment Recorded (Sent to Customer) [japanese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(457, 'invoice', 'invoice-overdue-notice', 'japanese', 'Invoice Overdue Notice [japanese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(458, 'invoice', 'invoice-already-send', 'japanese', 'Invoice Already Sent to Customer [japanese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(459, 'ticket', 'new-ticket-created-staff', 'japanese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [japanese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(460, 'estimate', 'estimate-send-to-client', 'japanese', 'Send Estimate to Customer [japanese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(461, 'ticket', 'ticket-reply-to-admin', 'japanese', 'Ticket Reply (Sent to Staff) [japanese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(462, 'estimate', 'estimate-already-send', 'japanese', 'Estimate Already Sent to Customer [japanese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(463, 'contract', 'contract-expiration', 'japanese', 'Contract Expiration Reminder (Sent to Customer Contacts) [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(464, 'tasks', 'task-assigned', 'japanese', 'New Task Assigned (Sent to Staff) [japanese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(465, 'tasks', 'task-added-as-follower', 'japanese', 'Staff Member Added as Follower on Task (Sent to Staff) [japanese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(466, 'tasks', 'task-commented', 'japanese', 'New Comment on Task (Sent to Staff) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(467, 'tasks', 'task-added-attachment', 'japanese', 'New Attachment(s) on Task (Sent to Staff) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(468, 'estimate', 'estimate-declined-to-staff', 'japanese', 'Estimate Declined (Sent to Staff) [japanese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(469, 'estimate', 'estimate-accepted-to-staff', 'japanese', 'Estimate Accepted (Sent to Staff) [japanese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(470, 'proposals', 'proposal-client-accepted', 'japanese', 'Customer Action - Accepted (Sent to Staff) [japanese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(471, 'proposals', 'proposal-send-to-customer', 'japanese', 'Send Proposal to Customer [japanese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(472, 'proposals', 'proposal-client-declined', 'japanese', 'Customer Action - Declined (Sent to Staff) [japanese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(473, 'proposals', 'proposal-client-thank-you', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(474, 'proposals', 'proposal-comment-to-client', 'japanese', 'New Comment Â (Sent to Customer/Lead) [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(475, 'proposals', 'proposal-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(476, 'estimate', 'estimate-thank-you-to-customer', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(477, 'tasks', 'task-deadline-notification', 'japanese', 'Task Deadline Reminder - Sent to Assigned Members [japanese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(478, 'contract', 'send-contract', 'japanese', 'Send Contract to Customer [japanese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(479, 'invoice', 'invoice-payment-recorded-to-staff', 'japanese', 'Invoice Payment Recorded (Sent to Staff) [japanese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(480, 'ticket', 'auto-close-ticket', 'japanese', 'Auto Close Ticket [japanese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(481, 'project', 'new-project-discussion-created-to-staff', 'japanese', 'New Project Discussion (Sent to Project Members) [japanese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(482, 'project', 'new-project-discussion-created-to-customer', 'japanese', 'New Project Discussion (Sent to Customer Contacts) [japanese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(483, 'project', 'new-project-file-uploaded-to-customer', 'japanese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [japanese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(484, 'project', 'new-project-file-uploaded-to-staff', 'japanese', 'New Project File(s) Uploaded (Sent to Project Members) [japanese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(485, 'project', 'new-project-discussion-comment-to-customer', 'japanese', 'New Discussion Comment  (Sent to Customer Contacts) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(486, 'project', 'new-project-discussion-comment-to-staff', 'japanese', 'New Discussion Comment (Sent to Project Members) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(487, 'project', 'staff-added-as-project-member', 'japanese', 'Staff Added as Project Member [japanese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(488, 'estimate', 'estimate-expiry-reminder', 'japanese', 'Estimate Expiration Reminder [japanese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(489, 'proposals', 'proposal-expiry-reminder', 'japanese', 'Proposal Expiration Reminder [japanese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(490, 'staff', 'new-staff-created', 'japanese', 'New Staff Created (Welcome Email) [japanese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(491, 'client', 'contact-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(492, 'client', 'contact-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(493, 'client', 'contact-set-password', 'japanese', 'Set New Password [japanese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(494, 'staff', 'staff-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(495, 'staff', 'staff-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(496, 'project', 'assigned-to-project', 'japanese', 'New Project Created (Sent to Customer Contacts) [japanese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(497, 'tasks', 'task-added-attachment-to-contacts', 'japanese', 'New Attachment(s) on Task (Sent to Customer Contacts) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(498, 'tasks', 'task-commented-to-contacts', 'japanese', 'New Comment on Task (Sent to Customer Contacts) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(499, 'leads', 'new-lead-assigned', 'japanese', 'New Lead Assigned to Staff Member [japanese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(500, 'client', 'client-statement', 'japanese', 'Statement - Account Summary [japanese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(501, 'ticket', 'ticket-assigned-to-admin', 'japanese', 'New Ticket Assigned (Sent to Staff) [japanese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(502, 'client', 'new-client-registered-to-admin', 'japanese', 'New Customer Registration (Sent to admins) [japanese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(503, 'leads', 'new-web-to-lead-form-submitted', 'japanese', 'Web to lead form submitted - Sent to lead [japanese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(504, 'staff', 'two-factor-authentication', 'japanese', 'Two Factor Authentication [japanese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(505, 'project', 'project-finished-to-customer', 'japanese', 'Project Marked as Finished (Sent to Customer Contacts) [japanese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(506, 'credit_note', 'credit-note-send-to-client', 'japanese', 'Send Credit Note To Email [japanese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(507, 'tasks', 'task-status-change-to-staff', 'japanese', 'Task Status Changed (Sent to Staff) [japanese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(508, 'tasks', 'task-status-change-to-contacts', 'japanese', 'Task Status Changed (Sent to Customer Contacts) [japanese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(509, 'staff', 'reminder-email-staff', 'japanese', 'Staff Reminder Email [japanese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(510, 'contract', 'contract-comment-to-client', 'japanese', 'New Comment Â (Sent to Customer Contacts) [japanese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(511, 'contract', 'contract-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(512, 'subscriptions', 'send-subscription', 'japanese', 'Send Subscription to Customer [japanese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(513, 'subscriptions', 'subscription-payment-failed', 'japanese', 'Subscription Payment Failed [japanese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(514, 'subscriptions', 'subscription-canceled', 'japanese', 'Subscription Canceled (Sent to customer primary contact) [japanese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(515, 'subscriptions', 'subscription-payment-succeeded', 'japanese', 'Subscription Payment Succeeded (Sent to customer primary contact) [japanese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(516, 'contract', 'contract-expiration-to-staff', 'japanese', 'Contract Expiration Reminder (Sent to Staff) [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(517, 'gdpr', 'gdpr-removal-request', 'japanese', 'Removal Request From Contact (Sent to administrators) [japanese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(518, 'gdpr', 'gdpr-removal-request-lead', 'japanese', 'Removal Request From Lead (Sent to administrators) [japanese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(519, 'client', 'client-registration-confirmed', 'japanese', 'Customer Registration Confirmed [japanese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(520, 'contract', 'contract-signed-to-staff', 'japanese', 'Contract Signed (Sent to Staff) [japanese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(521, 'subscriptions', 'customer-subscribed-to-staff', 'japanese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [japanese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(522, 'client', 'contact-verification-email', 'japanese', 'Email Verification (Sent to Contact After Registration) [japanese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(523, 'client', 'new-customer-profile-file-uploaded-to-staff', 'japanese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [japanese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(524, 'staff', 'event-notification-to-staff', 'japanese', 'Event Notification (Calendar) [japanese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(525, 'subscriptions', 'subscription-payment-requires-action', 'japanese', 'Credit Card Authorization Required - SCA [japanese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(526, 'client', 'new-client-created', 'german', 'New Contact Added/Registered (Welcome Email) [german]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(527, 'invoice', 'invoice-send-to-client', 'german', 'Send Invoice to Customer [german]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(528, 'ticket', 'new-ticket-opened-admin', 'german', 'New Ticket Opened (Opened by Staff, Sent to Customer) [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(529, 'ticket', 'ticket-reply', 'german', 'Ticket Reply (Sent to Customer) [german]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(530, 'ticket', 'ticket-autoresponse', 'german', 'New Ticket Opened - Autoresponse [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(531, 'invoice', 'invoice-payment-recorded', 'german', 'Invoice Payment Recorded (Sent to Customer) [german]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(532, 'invoice', 'invoice-overdue-notice', 'german', 'Invoice Overdue Notice [german]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(533, 'invoice', 'invoice-already-send', 'german', 'Invoice Already Sent to Customer [german]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(534, 'ticket', 'new-ticket-created-staff', 'german', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [german]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(535, 'estimate', 'estimate-send-to-client', 'german', 'Send Estimate to Customer [german]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(536, 'ticket', 'ticket-reply-to-admin', 'german', 'Ticket Reply (Sent to Staff) [german]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(537, 'estimate', 'estimate-already-send', 'german', 'Estimate Already Sent to Customer [german]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(538, 'contract', 'contract-expiration', 'german', 'Contract Expiration Reminder (Sent to Customer Contacts) [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(539, 'tasks', 'task-assigned', 'german', 'New Task Assigned (Sent to Staff) [german]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(540, 'tasks', 'task-added-as-follower', 'german', 'Staff Member Added as Follower on Task (Sent to Staff) [german]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(541, 'tasks', 'task-commented', 'german', 'New Comment on Task (Sent to Staff) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(542, 'tasks', 'task-added-attachment', 'german', 'New Attachment(s) on Task (Sent to Staff) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(543, 'estimate', 'estimate-declined-to-staff', 'german', 'Estimate Declined (Sent to Staff) [german]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(544, 'estimate', 'estimate-accepted-to-staff', 'german', 'Estimate Accepted (Sent to Staff) [german]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(545, 'proposals', 'proposal-client-accepted', 'german', 'Customer Action - Accepted (Sent to Staff) [german]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(546, 'proposals', 'proposal-send-to-customer', 'german', 'Send Proposal to Customer [german]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(547, 'proposals', 'proposal-client-declined', 'german', 'Customer Action - Declined (Sent to Staff) [german]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(548, 'proposals', 'proposal-client-thank-you', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(549, 'proposals', 'proposal-comment-to-client', 'german', 'New Comment Â (Sent to Customer/Lead) [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(550, 'proposals', 'proposal-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(551, 'estimate', 'estimate-thank-you-to-customer', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(552, 'tasks', 'task-deadline-notification', 'german', 'Task Deadline Reminder - Sent to Assigned Members [german]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(553, 'contract', 'send-contract', 'german', 'Send Contract to Customer [german]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(554, 'invoice', 'invoice-payment-recorded-to-staff', 'german', 'Invoice Payment Recorded (Sent to Staff) [german]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(555, 'ticket', 'auto-close-ticket', 'german', 'Auto Close Ticket [german]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(556, 'project', 'new-project-discussion-created-to-staff', 'german', 'New Project Discussion (Sent to Project Members) [german]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(557, 'project', 'new-project-discussion-created-to-customer', 'german', 'New Project Discussion (Sent to Customer Contacts) [german]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(558, 'project', 'new-project-file-uploaded-to-customer', 'german', 'New Project File(s) Uploaded (Sent to Customer Contacts) [german]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(559, 'project', 'new-project-file-uploaded-to-staff', 'german', 'New Project File(s) Uploaded (Sent to Project Members) [german]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(560, 'project', 'new-project-discussion-comment-to-customer', 'german', 'New Discussion Comment  (Sent to Customer Contacts) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(561, 'project', 'new-project-discussion-comment-to-staff', 'german', 'New Discussion Comment (Sent to Project Members) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(562, 'project', 'staff-added-as-project-member', 'german', 'Staff Added as Project Member [german]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(563, 'estimate', 'estimate-expiry-reminder', 'german', 'Estimate Expiration Reminder [german]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(564, 'proposals', 'proposal-expiry-reminder', 'german', 'Proposal Expiration Reminder [german]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(565, 'staff', 'new-staff-created', 'german', 'New Staff Created (Welcome Email) [german]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(566, 'client', 'contact-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(567, 'client', 'contact-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(568, 'client', 'contact-set-password', 'german', 'Set New Password [german]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(569, 'staff', 'staff-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(570, 'staff', 'staff-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(571, 'project', 'assigned-to-project', 'german', 'New Project Created (Sent to Customer Contacts) [german]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(572, 'tasks', 'task-added-attachment-to-contacts', 'german', 'New Attachment(s) on Task (Sent to Customer Contacts) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(573, 'tasks', 'task-commented-to-contacts', 'german', 'New Comment on Task (Sent to Customer Contacts) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(574, 'leads', 'new-lead-assigned', 'german', 'New Lead Assigned to Staff Member [german]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(575, 'client', 'client-statement', 'german', 'Statement - Account Summary [german]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(576, 'ticket', 'ticket-assigned-to-admin', 'german', 'New Ticket Assigned (Sent to Staff) [german]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(577, 'client', 'new-client-registered-to-admin', 'german', 'New Customer Registration (Sent to admins) [german]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(578, 'leads', 'new-web-to-lead-form-submitted', 'german', 'Web to lead form submitted - Sent to lead [german]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(579, 'staff', 'two-factor-authentication', 'german', 'Two Factor Authentication [german]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(580, 'project', 'project-finished-to-customer', 'german', 'Project Marked as Finished (Sent to Customer Contacts) [german]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(581, 'credit_note', 'credit-note-send-to-client', 'german', 'Send Credit Note To Email [german]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(582, 'tasks', 'task-status-change-to-staff', 'german', 'Task Status Changed (Sent to Staff) [german]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(583, 'tasks', 'task-status-change-to-contacts', 'german', 'Task Status Changed (Sent to Customer Contacts) [german]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(584, 'staff', 'reminder-email-staff', 'german', 'Staff Reminder Email [german]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(585, 'contract', 'contract-comment-to-client', 'german', 'New Comment Â (Sent to Customer Contacts) [german]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(586, 'contract', 'contract-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(587, 'subscriptions', 'send-subscription', 'german', 'Send Subscription to Customer [german]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(588, 'subscriptions', 'subscription-payment-failed', 'german', 'Subscription Payment Failed [german]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(589, 'subscriptions', 'subscription-canceled', 'german', 'Subscription Canceled (Sent to customer primary contact) [german]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(590, 'subscriptions', 'subscription-payment-succeeded', 'german', 'Subscription Payment Succeeded (Sent to customer primary contact) [german]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(591, 'contract', 'contract-expiration-to-staff', 'german', 'Contract Expiration Reminder (Sent to Staff) [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(592, 'gdpr', 'gdpr-removal-request', 'german', 'Removal Request From Contact (Sent to administrators) [german]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(593, 'gdpr', 'gdpr-removal-request-lead', 'german', 'Removal Request From Lead (Sent to administrators) [german]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(594, 'client', 'client-registration-confirmed', 'german', 'Customer Registration Confirmed [german]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(595, 'contract', 'contract-signed-to-staff', 'german', 'Contract Signed (Sent to Staff) [german]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(596, 'subscriptions', 'customer-subscribed-to-staff', 'german', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [german]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(597, 'client', 'contact-verification-email', 'german', 'Email Verification (Sent to Contact After Registration) [german]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(598, 'client', 'new-customer-profile-file-uploaded-to-staff', 'german', 'New Customer Profile File(s) Uploaded (Sent to Staff) [german]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(599, 'staff', 'event-notification-to-staff', 'german', 'Event Notification (Calendar) [german]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(600, 'subscriptions', 'subscription-payment-requires-action', 'german', 'Credit Card Authorization Required - SCA [german]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(601, 'client', 'new-client-created', 'indonesia', 'New Contact Added/Registered (Welcome Email) [indonesia]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(602, 'invoice', 'invoice-send-to-client', 'indonesia', 'Send Invoice to Customer [indonesia]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(603, 'ticket', 'new-ticket-opened-admin', 'indonesia', 'New Ticket Opened (Opened by Staff, Sent to Customer) [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(604, 'ticket', 'ticket-reply', 'indonesia', 'Ticket Reply (Sent to Customer) [indonesia]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(605, 'ticket', 'ticket-autoresponse', 'indonesia', 'New Ticket Opened - Autoresponse [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(606, 'invoice', 'invoice-payment-recorded', 'indonesia', 'Invoice Payment Recorded (Sent to Customer) [indonesia]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(607, 'invoice', 'invoice-overdue-notice', 'indonesia', 'Invoice Overdue Notice [indonesia]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(608, 'invoice', 'invoice-already-send', 'indonesia', 'Invoice Already Sent to Customer [indonesia]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(609, 'ticket', 'new-ticket-created-staff', 'indonesia', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [indonesia]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(610, 'estimate', 'estimate-send-to-client', 'indonesia', 'Send Estimate to Customer [indonesia]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(611, 'ticket', 'ticket-reply-to-admin', 'indonesia', 'Ticket Reply (Sent to Staff) [indonesia]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(612, 'estimate', 'estimate-already-send', 'indonesia', 'Estimate Already Sent to Customer [indonesia]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(613, 'contract', 'contract-expiration', 'indonesia', 'Contract Expiration Reminder (Sent to Customer Contacts) [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(614, 'tasks', 'task-assigned', 'indonesia', 'New Task Assigned (Sent to Staff) [indonesia]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(615, 'tasks', 'task-added-as-follower', 'indonesia', 'Staff Member Added as Follower on Task (Sent to Staff) [indonesia]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(616, 'tasks', 'task-commented', 'indonesia', 'New Comment on Task (Sent to Staff) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(617, 'tasks', 'task-added-attachment', 'indonesia', 'New Attachment(s) on Task (Sent to Staff) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(618, 'estimate', 'estimate-declined-to-staff', 'indonesia', 'Estimate Declined (Sent to Staff) [indonesia]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(619, 'estimate', 'estimate-accepted-to-staff', 'indonesia', 'Estimate Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(620, 'proposals', 'proposal-client-accepted', 'indonesia', 'Customer Action - Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(621, 'proposals', 'proposal-send-to-customer', 'indonesia', 'Send Proposal to Customer [indonesia]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(622, 'proposals', 'proposal-client-declined', 'indonesia', 'Customer Action - Declined (Sent to Staff) [indonesia]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(623, 'proposals', 'proposal-client-thank-you', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(624, 'proposals', 'proposal-comment-to-client', 'indonesia', 'New Comment Â (Sent to Customer/Lead) [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(625, 'proposals', 'proposal-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(626, 'estimate', 'estimate-thank-you-to-customer', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(627, 'tasks', 'task-deadline-notification', 'indonesia', 'Task Deadline Reminder - Sent to Assigned Members [indonesia]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(628, 'contract', 'send-contract', 'indonesia', 'Send Contract to Customer [indonesia]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(629, 'invoice', 'invoice-payment-recorded-to-staff', 'indonesia', 'Invoice Payment Recorded (Sent to Staff) [indonesia]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(630, 'ticket', 'auto-close-ticket', 'indonesia', 'Auto Close Ticket [indonesia]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(631, 'project', 'new-project-discussion-created-to-staff', 'indonesia', 'New Project Discussion (Sent to Project Members) [indonesia]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(632, 'project', 'new-project-discussion-created-to-customer', 'indonesia', 'New Project Discussion (Sent to Customer Contacts) [indonesia]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(633, 'project', 'new-project-file-uploaded-to-customer', 'indonesia', 'New Project File(s) Uploaded (Sent to Customer Contacts) [indonesia]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(634, 'project', 'new-project-file-uploaded-to-staff', 'indonesia', 'New Project File(s) Uploaded (Sent to Project Members) [indonesia]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(635, 'project', 'new-project-discussion-comment-to-customer', 'indonesia', 'New Discussion Comment  (Sent to Customer Contacts) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(636, 'project', 'new-project-discussion-comment-to-staff', 'indonesia', 'New Discussion Comment (Sent to Project Members) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(637, 'project', 'staff-added-as-project-member', 'indonesia', 'Staff Added as Project Member [indonesia]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(638, 'estimate', 'estimate-expiry-reminder', 'indonesia', 'Estimate Expiration Reminder [indonesia]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(639, 'proposals', 'proposal-expiry-reminder', 'indonesia', 'Proposal Expiration Reminder [indonesia]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(640, 'staff', 'new-staff-created', 'indonesia', 'New Staff Created (Welcome Email) [indonesia]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(641, 'client', 'contact-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(642, 'client', 'contact-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(643, 'client', 'contact-set-password', 'indonesia', 'Set New Password [indonesia]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(644, 'staff', 'staff-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(645, 'staff', 'staff-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(646, 'project', 'assigned-to-project', 'indonesia', 'New Project Created (Sent to Customer Contacts) [indonesia]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(647, 'tasks', 'task-added-attachment-to-contacts', 'indonesia', 'New Attachment(s) on Task (Sent to Customer Contacts) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(648, 'tasks', 'task-commented-to-contacts', 'indonesia', 'New Comment on Task (Sent to Customer Contacts) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(649, 'leads', 'new-lead-assigned', 'indonesia', 'New Lead Assigned to Staff Member [indonesia]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(650, 'client', 'client-statement', 'indonesia', 'Statement - Account Summary [indonesia]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(651, 'ticket', 'ticket-assigned-to-admin', 'indonesia', 'New Ticket Assigned (Sent to Staff) [indonesia]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(652, 'client', 'new-client-registered-to-admin', 'indonesia', 'New Customer Registration (Sent to admins) [indonesia]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(653, 'leads', 'new-web-to-lead-form-submitted', 'indonesia', 'Web to lead form submitted - Sent to lead [indonesia]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(654, 'staff', 'two-factor-authentication', 'indonesia', 'Two Factor Authentication [indonesia]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(655, 'project', 'project-finished-to-customer', 'indonesia', 'Project Marked as Finished (Sent to Customer Contacts) [indonesia]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(656, 'credit_note', 'credit-note-send-to-client', 'indonesia', 'Send Credit Note To Email [indonesia]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(657, 'tasks', 'task-status-change-to-staff', 'indonesia', 'Task Status Changed (Sent to Staff) [indonesia]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(658, 'tasks', 'task-status-change-to-contacts', 'indonesia', 'Task Status Changed (Sent to Customer Contacts) [indonesia]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(659, 'staff', 'reminder-email-staff', 'indonesia', 'Staff Reminder Email [indonesia]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(660, 'contract', 'contract-comment-to-client', 'indonesia', 'New Comment Â (Sent to Customer Contacts) [indonesia]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(661, 'contract', 'contract-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(662, 'subscriptions', 'send-subscription', 'indonesia', 'Send Subscription to Customer [indonesia]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(663, 'subscriptions', 'subscription-payment-failed', 'indonesia', 'Subscription Payment Failed [indonesia]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(664, 'subscriptions', 'subscription-canceled', 'indonesia', 'Subscription Canceled (Sent to customer primary contact) [indonesia]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(665, 'subscriptions', 'subscription-payment-succeeded', 'indonesia', 'Subscription Payment Succeeded (Sent to customer primary contact) [indonesia]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(666, 'contract', 'contract-expiration-to-staff', 'indonesia', 'Contract Expiration Reminder (Sent to Staff) [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(667, 'gdpr', 'gdpr-removal-request', 'indonesia', 'Removal Request From Contact (Sent to administrators) [indonesia]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(668, 'gdpr', 'gdpr-removal-request-lead', 'indonesia', 'Removal Request From Lead (Sent to administrators) [indonesia]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(669, 'client', 'client-registration-confirmed', 'indonesia', 'Customer Registration Confirmed [indonesia]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(670, 'contract', 'contract-signed-to-staff', 'indonesia', 'Contract Signed (Sent to Staff) [indonesia]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(671, 'subscriptions', 'customer-subscribed-to-staff', 'indonesia', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [indonesia]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(672, 'client', 'contact-verification-email', 'indonesia', 'Email Verification (Sent to Contact After Registration) [indonesia]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(673, 'client', 'new-customer-profile-file-uploaded-to-staff', 'indonesia', 'New Customer Profile File(s) Uploaded (Sent to Staff) [indonesia]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(674, 'staff', 'event-notification-to-staff', 'indonesia', 'Event Notification (Calendar) [indonesia]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(675, 'subscriptions', 'subscription-payment-requires-action', 'indonesia', 'Credit Card Authorization Required - SCA [indonesia]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(676, 'client', 'new-client-created', 'slovak', 'New Contact Added/Registered (Welcome Email) [slovak]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(677, 'invoice', 'invoice-send-to-client', 'slovak', 'Send Invoice to Customer [slovak]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(678, 'ticket', 'new-ticket-opened-admin', 'slovak', 'New Ticket Opened (Opened by Staff, Sent to Customer) [slovak]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(679, 'ticket', 'ticket-reply', 'slovak', 'Ticket Reply (Sent to Customer) [slovak]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(680, 'ticket', 'ticket-autoresponse', 'slovak', 'New Ticket Opened - Autoresponse [slovak]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(681, 'invoice', 'invoice-payment-recorded', 'slovak', 'Invoice Payment Recorded (Sent to Customer) [slovak]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(682, 'invoice', 'invoice-overdue-notice', 'slovak', 'Invoice Overdue Notice [slovak]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(683, 'invoice', 'invoice-already-send', 'slovak', 'Invoice Already Sent to Customer [slovak]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(684, 'ticket', 'new-ticket-created-staff', 'slovak', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [slovak]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(685, 'estimate', 'estimate-send-to-client', 'slovak', 'Send Estimate to Customer [slovak]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(686, 'ticket', 'ticket-reply-to-admin', 'slovak', 'Ticket Reply (Sent to Staff) [slovak]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(687, 'estimate', 'estimate-already-send', 'slovak', 'Estimate Already Sent to Customer [slovak]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(688, 'contract', 'contract-expiration', 'slovak', 'Contract Expiration Reminder (Sent to Customer Contacts) [slovak]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(689, 'tasks', 'task-assigned', 'slovak', 'New Task Assigned (Sent to Staff) [slovak]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(690, 'tasks', 'task-added-as-follower', 'slovak', 'Staff Member Added as Follower on Task (Sent to Staff) [slovak]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(691, 'tasks', 'task-commented', 'slovak', 'New Comment on Task (Sent to Staff) [slovak]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(692, 'tasks', 'task-added-attachment', 'slovak', 'New Attachment(s) on Task (Sent to Staff) [slovak]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(693, 'estimate', 'estimate-declined-to-staff', 'slovak', 'Estimate Declined (Sent to Staff) [slovak]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(694, 'estimate', 'estimate-accepted-to-staff', 'slovak', 'Estimate Accepted (Sent to Staff) [slovak]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(695, 'proposals', 'proposal-client-accepted', 'slovak', 'Customer Action - Accepted (Sent to Staff) [slovak]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(696, 'proposals', 'proposal-send-to-customer', 'slovak', 'Send Proposal to Customer [slovak]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(697, 'proposals', 'proposal-client-declined', 'slovak', 'Customer Action - Declined (Sent to Staff) [slovak]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(698, 'proposals', 'proposal-client-thank-you', 'slovak', 'Thank You Email (Sent to Customer After Accept) [slovak]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(699, 'proposals', 'proposal-comment-to-client', 'slovak', 'New Comment Â (Sent to Customer/Lead) [slovak]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(700, 'proposals', 'proposal-comment-to-admin', 'slovak', 'New Comment (Sent to Staff)  [slovak]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(701, 'estimate', 'estimate-thank-you-to-customer', 'slovak', 'Thank You Email (Sent to Customer After Accept) [slovak]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(702, 'tasks', 'task-deadline-notification', 'slovak', 'Task Deadline Reminder - Sent to Assigned Members [slovak]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(703, 'contract', 'send-contract', 'slovak', 'Send Contract to Customer [slovak]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(704, 'invoice', 'invoice-payment-recorded-to-staff', 'slovak', 'Invoice Payment Recorded (Sent to Staff) [slovak]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(705, 'ticket', 'auto-close-ticket', 'slovak', 'Auto Close Ticket [slovak]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(706, 'project', 'new-project-discussion-created-to-staff', 'slovak', 'New Project Discussion (Sent to Project Members) [slovak]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(707, 'project', 'new-project-discussion-created-to-customer', 'slovak', 'New Project Discussion (Sent to Customer Contacts) [slovak]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(708, 'project', 'new-project-file-uploaded-to-customer', 'slovak', 'New Project File(s) Uploaded (Sent to Customer Contacts) [slovak]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(709, 'project', 'new-project-file-uploaded-to-staff', 'slovak', 'New Project File(s) Uploaded (Sent to Project Members) [slovak]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(710, 'project', 'new-project-discussion-comment-to-customer', 'slovak', 'New Discussion Comment  (Sent to Customer Contacts) [slovak]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(711, 'project', 'new-project-discussion-comment-to-staff', 'slovak', 'New Discussion Comment (Sent to Project Members) [slovak]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(712, 'project', 'staff-added-as-project-member', 'slovak', 'Staff Added as Project Member [slovak]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(713, 'estimate', 'estimate-expiry-reminder', 'slovak', 'Estimate Expiration Reminder [slovak]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(714, 'proposals', 'proposal-expiry-reminder', 'slovak', 'Proposal Expiration Reminder [slovak]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(715, 'staff', 'new-staff-created', 'slovak', 'New Staff Created (Welcome Email) [slovak]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(716, 'client', 'contact-forgot-password', 'slovak', 'Forgot Password [slovak]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(717, 'client', 'contact-password-reseted', 'slovak', 'Password Reset - Confirmation [slovak]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(718, 'client', 'contact-set-password', 'slovak', 'Set New Password [slovak]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(719, 'staff', 'staff-forgot-password', 'slovak', 'Forgot Password [slovak]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(720, 'staff', 'staff-password-reseted', 'slovak', 'Password Reset - Confirmation [slovak]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(721, 'project', 'assigned-to-project', 'slovak', 'New Project Created (Sent to Customer Contacts) [slovak]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(722, 'tasks', 'task-added-attachment-to-contacts', 'slovak', 'New Attachment(s) on Task (Sent to Customer Contacts) [slovak]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(723, 'tasks', 'task-commented-to-contacts', 'slovak', 'New Comment on Task (Sent to Customer Contacts) [slovak]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(724, 'leads', 'new-lead-assigned', 'slovak', 'New Lead Assigned to Staff Member [slovak]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(725, 'client', 'client-statement', 'slovak', 'Statement - Account Summary [slovak]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(726, 'ticket', 'ticket-assigned-to-admin', 'slovak', 'New Ticket Assigned (Sent to Staff) [slovak]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(727, 'client', 'new-client-registered-to-admin', 'slovak', 'New Customer Registration (Sent to admins) [slovak]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(728, 'leads', 'new-web-to-lead-form-submitted', 'slovak', 'Web to lead form submitted - Sent to lead [slovak]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(729, 'staff', 'two-factor-authentication', 'slovak', 'Two Factor Authentication [slovak]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(730, 'project', 'project-finished-to-customer', 'slovak', 'Project Marked as Finished (Sent to Customer Contacts) [slovak]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(731, 'credit_note', 'credit-note-send-to-client', 'slovak', 'Send Credit Note To Email [slovak]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(732, 'tasks', 'task-status-change-to-staff', 'slovak', 'Task Status Changed (Sent to Staff) [slovak]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(733, 'tasks', 'task-status-change-to-contacts', 'slovak', 'Task Status Changed (Sent to Customer Contacts) [slovak]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(734, 'staff', 'reminder-email-staff', 'slovak', 'Staff Reminder Email [slovak]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(735, 'contract', 'contract-comment-to-client', 'slovak', 'New Comment Â (Sent to Customer Contacts) [slovak]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(736, 'contract', 'contract-comment-to-admin', 'slovak', 'New Comment (Sent to Staff)  [slovak]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(737, 'subscriptions', 'send-subscription', 'slovak', 'Send Subscription to Customer [slovak]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(738, 'subscriptions', 'subscription-payment-failed', 'slovak', 'Subscription Payment Failed [slovak]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(739, 'subscriptions', 'subscription-canceled', 'slovak', 'Subscription Canceled (Sent to customer primary contact) [slovak]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(740, 'subscriptions', 'subscription-payment-succeeded', 'slovak', 'Subscription Payment Succeeded (Sent to customer primary contact) [slovak]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(741, 'contract', 'contract-expiration-to-staff', 'slovak', 'Contract Expiration Reminder (Sent to Staff) [slovak]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(742, 'gdpr', 'gdpr-removal-request', 'slovak', 'Removal Request From Contact (Sent to administrators) [slovak]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(743, 'gdpr', 'gdpr-removal-request-lead', 'slovak', 'Removal Request From Lead (Sent to administrators) [slovak]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(744, 'client', 'client-registration-confirmed', 'slovak', 'Customer Registration Confirmed [slovak]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(745, 'contract', 'contract-signed-to-staff', 'slovak', 'Contract Signed (Sent to Staff) [slovak]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(746, 'subscriptions', 'customer-subscribed-to-staff', 'slovak', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [slovak]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(747, 'client', 'contact-verification-email', 'slovak', 'Email Verification (Sent to Contact After Registration) [slovak]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(748, 'client', 'new-customer-profile-file-uploaded-to-staff', 'slovak', 'New Customer Profile File(s) Uploaded (Sent to Staff) [slovak]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(749, 'staff', 'event-notification-to-staff', 'slovak', 'Event Notification (Calendar) [slovak]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(750, 'subscriptions', 'subscription-payment-requires-action', 'slovak', 'Credit Card Authorization Required - SCA [slovak]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(751, 'client', 'new-client-created', 'romanian', 'New Contact Added/Registered (Welcome Email) [romanian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(752, 'invoice', 'invoice-send-to-client', 'romanian', 'Send Invoice to Customer [romanian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(753, 'ticket', 'new-ticket-opened-admin', 'romanian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [romanian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(754, 'ticket', 'ticket-reply', 'romanian', 'Ticket Reply (Sent to Customer) [romanian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(755, 'ticket', 'ticket-autoresponse', 'romanian', 'New Ticket Opened - Autoresponse [romanian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(756, 'invoice', 'invoice-payment-recorded', 'romanian', 'Invoice Payment Recorded (Sent to Customer) [romanian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(757, 'invoice', 'invoice-overdue-notice', 'romanian', 'Invoice Overdue Notice [romanian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(758, 'invoice', 'invoice-already-send', 'romanian', 'Invoice Already Sent to Customer [romanian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(759, 'ticket', 'new-ticket-created-staff', 'romanian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [romanian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(760, 'estimate', 'estimate-send-to-client', 'romanian', 'Send Estimate to Customer [romanian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(761, 'ticket', 'ticket-reply-to-admin', 'romanian', 'Ticket Reply (Sent to Staff) [romanian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(762, 'estimate', 'estimate-already-send', 'romanian', 'Estimate Already Sent to Customer [romanian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(763, 'contract', 'contract-expiration', 'romanian', 'Contract Expiration Reminder (Sent to Customer Contacts) [romanian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(764, 'tasks', 'task-assigned', 'romanian', 'New Task Assigned (Sent to Staff) [romanian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(765, 'tasks', 'task-added-as-follower', 'romanian', 'Staff Member Added as Follower on Task (Sent to Staff) [romanian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(766, 'tasks', 'task-commented', 'romanian', 'New Comment on Task (Sent to Staff) [romanian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(767, 'tasks', 'task-added-attachment', 'romanian', 'New Attachment(s) on Task (Sent to Staff) [romanian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(768, 'estimate', 'estimate-declined-to-staff', 'romanian', 'Estimate Declined (Sent to Staff) [romanian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(769, 'estimate', 'estimate-accepted-to-staff', 'romanian', 'Estimate Accepted (Sent to Staff) [romanian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(770, 'proposals', 'proposal-client-accepted', 'romanian', 'Customer Action - Accepted (Sent to Staff) [romanian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(771, 'proposals', 'proposal-send-to-customer', 'romanian', 'Send Proposal to Customer [romanian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(772, 'proposals', 'proposal-client-declined', 'romanian', 'Customer Action - Declined (Sent to Staff) [romanian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(773, 'proposals', 'proposal-client-thank-you', 'romanian', 'Thank You Email (Sent to Customer After Accept) [romanian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(774, 'proposals', 'proposal-comment-to-client', 'romanian', 'New Comment Â (Sent to Customer/Lead) [romanian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(775, 'proposals', 'proposal-comment-to-admin', 'romanian', 'New Comment (Sent to Staff)  [romanian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(776, 'estimate', 'estimate-thank-you-to-customer', 'romanian', 'Thank You Email (Sent to Customer After Accept) [romanian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(777, 'tasks', 'task-deadline-notification', 'romanian', 'Task Deadline Reminder - Sent to Assigned Members [romanian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(778, 'contract', 'send-contract', 'romanian', 'Send Contract to Customer [romanian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(779, 'invoice', 'invoice-payment-recorded-to-staff', 'romanian', 'Invoice Payment Recorded (Sent to Staff) [romanian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(780, 'ticket', 'auto-close-ticket', 'romanian', 'Auto Close Ticket [romanian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(781, 'project', 'new-project-discussion-created-to-staff', 'romanian', 'New Project Discussion (Sent to Project Members) [romanian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(782, 'project', 'new-project-discussion-created-to-customer', 'romanian', 'New Project Discussion (Sent to Customer Contacts) [romanian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(783, 'project', 'new-project-file-uploaded-to-customer', 'romanian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [romanian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(784, 'project', 'new-project-file-uploaded-to-staff', 'romanian', 'New Project File(s) Uploaded (Sent to Project Members) [romanian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(785, 'project', 'new-project-discussion-comment-to-customer', 'romanian', 'New Discussion Comment  (Sent to Customer Contacts) [romanian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(786, 'project', 'new-project-discussion-comment-to-staff', 'romanian', 'New Discussion Comment (Sent to Project Members) [romanian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(787, 'project', 'staff-added-as-project-member', 'romanian', 'Staff Added as Project Member [romanian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(788, 'estimate', 'estimate-expiry-reminder', 'romanian', 'Estimate Expiration Reminder [romanian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(789, 'proposals', 'proposal-expiry-reminder', 'romanian', 'Proposal Expiration Reminder [romanian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(790, 'staff', 'new-staff-created', 'romanian', 'New Staff Created (Welcome Email) [romanian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(791, 'client', 'contact-forgot-password', 'romanian', 'Forgot Password [romanian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(792, 'client', 'contact-password-reseted', 'romanian', 'Password Reset - Confirmation [romanian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(793, 'client', 'contact-set-password', 'romanian', 'Set New Password [romanian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(794, 'staff', 'staff-forgot-password', 'romanian', 'Forgot Password [romanian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(795, 'staff', 'staff-password-reseted', 'romanian', 'Password Reset - Confirmation [romanian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(796, 'project', 'assigned-to-project', 'romanian', 'New Project Created (Sent to Customer Contacts) [romanian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(797, 'tasks', 'task-added-attachment-to-contacts', 'romanian', 'New Attachment(s) on Task (Sent to Customer Contacts) [romanian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(798, 'tasks', 'task-commented-to-contacts', 'romanian', 'New Comment on Task (Sent to Customer Contacts) [romanian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(799, 'leads', 'new-lead-assigned', 'romanian', 'New Lead Assigned to Staff Member [romanian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(800, 'client', 'client-statement', 'romanian', 'Statement - Account Summary [romanian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(801, 'ticket', 'ticket-assigned-to-admin', 'romanian', 'New Ticket Assigned (Sent to Staff) [romanian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(802, 'client', 'new-client-registered-to-admin', 'romanian', 'New Customer Registration (Sent to admins) [romanian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(803, 'leads', 'new-web-to-lead-form-submitted', 'romanian', 'Web to lead form submitted - Sent to lead [romanian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(804, 'staff', 'two-factor-authentication', 'romanian', 'Two Factor Authentication [romanian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(805, 'project', 'project-finished-to-customer', 'romanian', 'Project Marked as Finished (Sent to Customer Contacts) [romanian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(806, 'credit_note', 'credit-note-send-to-client', 'romanian', 'Send Credit Note To Email [romanian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(807, 'tasks', 'task-status-change-to-staff', 'romanian', 'Task Status Changed (Sent to Staff) [romanian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(808, 'tasks', 'task-status-change-to-contacts', 'romanian', 'Task Status Changed (Sent to Customer Contacts) [romanian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(809, 'staff', 'reminder-email-staff', 'romanian', 'Staff Reminder Email [romanian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(810, 'contract', 'contract-comment-to-client', 'romanian', 'New Comment Â (Sent to Customer Contacts) [romanian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(811, 'contract', 'contract-comment-to-admin', 'romanian', 'New Comment (Sent to Staff)  [romanian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(812, 'subscriptions', 'send-subscription', 'romanian', 'Send Subscription to Customer [romanian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(813, 'subscriptions', 'subscription-payment-failed', 'romanian', 'Subscription Payment Failed [romanian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(814, 'subscriptions', 'subscription-canceled', 'romanian', 'Subscription Canceled (Sent to customer primary contact) [romanian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(815, 'subscriptions', 'subscription-payment-succeeded', 'romanian', 'Subscription Payment Succeeded (Sent to customer primary contact) [romanian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(816, 'contract', 'contract-expiration-to-staff', 'romanian', 'Contract Expiration Reminder (Sent to Staff) [romanian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(817, 'gdpr', 'gdpr-removal-request', 'romanian', 'Removal Request From Contact (Sent to administrators) [romanian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(818, 'gdpr', 'gdpr-removal-request-lead', 'romanian', 'Removal Request From Lead (Sent to administrators) [romanian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(819, 'client', 'client-registration-confirmed', 'romanian', 'Customer Registration Confirmed [romanian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(820, 'contract', 'contract-signed-to-staff', 'romanian', 'Contract Signed (Sent to Staff) [romanian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(821, 'subscriptions', 'customer-subscribed-to-staff', 'romanian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [romanian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(822, 'client', 'contact-verification-email', 'romanian', 'Email Verification (Sent to Contact After Registration) [romanian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(823, 'client', 'new-customer-profile-file-uploaded-to-staff', 'romanian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [romanian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(824, 'staff', 'event-notification-to-staff', 'romanian', 'Event Notification (Calendar) [romanian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(825, 'subscriptions', 'subscription-payment-requires-action', 'romanian', 'Credit Card Authorization Required - SCA [romanian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(826, 'client', 'new-client-created', 'turkish', 'New Contact Added/Registered (Welcome Email) [turkish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(827, 'invoice', 'invoice-send-to-client', 'turkish', 'Send Invoice to Customer [turkish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(828, 'ticket', 'new-ticket-opened-admin', 'turkish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(829, 'ticket', 'ticket-reply', 'turkish', 'Ticket Reply (Sent to Customer) [turkish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(830, 'ticket', 'ticket-autoresponse', 'turkish', 'New Ticket Opened - Autoresponse [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(831, 'invoice', 'invoice-payment-recorded', 'turkish', 'Invoice Payment Recorded (Sent to Customer) [turkish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(832, 'invoice', 'invoice-overdue-notice', 'turkish', 'Invoice Overdue Notice [turkish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(833, 'invoice', 'invoice-already-send', 'turkish', 'Invoice Already Sent to Customer [turkish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(834, 'ticket', 'new-ticket-created-staff', 'turkish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [turkish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(835, 'estimate', 'estimate-send-to-client', 'turkish', 'Send Estimate to Customer [turkish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(836, 'ticket', 'ticket-reply-to-admin', 'turkish', 'Ticket Reply (Sent to Staff) [turkish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(837, 'estimate', 'estimate-already-send', 'turkish', 'Estimate Already Sent to Customer [turkish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(838, 'contract', 'contract-expiration', 'turkish', 'Contract Expiration Reminder (Sent to Customer Contacts) [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(839, 'tasks', 'task-assigned', 'turkish', 'New Task Assigned (Sent to Staff) [turkish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(840, 'tasks', 'task-added-as-follower', 'turkish', 'Staff Member Added as Follower on Task (Sent to Staff) [turkish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(841, 'tasks', 'task-commented', 'turkish', 'New Comment on Task (Sent to Staff) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(842, 'tasks', 'task-added-attachment', 'turkish', 'New Attachment(s) on Task (Sent to Staff) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(843, 'estimate', 'estimate-declined-to-staff', 'turkish', 'Estimate Declined (Sent to Staff) [turkish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(844, 'estimate', 'estimate-accepted-to-staff', 'turkish', 'Estimate Accepted (Sent to Staff) [turkish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(845, 'proposals', 'proposal-client-accepted', 'turkish', 'Customer Action - Accepted (Sent to Staff) [turkish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(846, 'proposals', 'proposal-send-to-customer', 'turkish', 'Send Proposal to Customer [turkish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(847, 'proposals', 'proposal-client-declined', 'turkish', 'Customer Action - Declined (Sent to Staff) [turkish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(848, 'proposals', 'proposal-client-thank-you', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(849, 'proposals', 'proposal-comment-to-client', 'turkish', 'New Comment Â (Sent to Customer/Lead) [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(850, 'proposals', 'proposal-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(851, 'estimate', 'estimate-thank-you-to-customer', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(852, 'tasks', 'task-deadline-notification', 'turkish', 'Task Deadline Reminder - Sent to Assigned Members [turkish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(853, 'contract', 'send-contract', 'turkish', 'Send Contract to Customer [turkish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(854, 'invoice', 'invoice-payment-recorded-to-staff', 'turkish', 'Invoice Payment Recorded (Sent to Staff) [turkish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(855, 'ticket', 'auto-close-ticket', 'turkish', 'Auto Close Ticket [turkish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(856, 'project', 'new-project-discussion-created-to-staff', 'turkish', 'New Project Discussion (Sent to Project Members) [turkish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(857, 'project', 'new-project-discussion-created-to-customer', 'turkish', 'New Project Discussion (Sent to Customer Contacts) [turkish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(858, 'project', 'new-project-file-uploaded-to-customer', 'turkish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [turkish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(859, 'project', 'new-project-file-uploaded-to-staff', 'turkish', 'New Project File(s) Uploaded (Sent to Project Members) [turkish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(860, 'project', 'new-project-discussion-comment-to-customer', 'turkish', 'New Discussion Comment  (Sent to Customer Contacts) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(861, 'project', 'new-project-discussion-comment-to-staff', 'turkish', 'New Discussion Comment (Sent to Project Members) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(862, 'project', 'staff-added-as-project-member', 'turkish', 'Staff Added as Project Member [turkish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(863, 'estimate', 'estimate-expiry-reminder', 'turkish', 'Estimate Expiration Reminder [turkish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(864, 'proposals', 'proposal-expiry-reminder', 'turkish', 'Proposal Expiration Reminder [turkish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(865, 'staff', 'new-staff-created', 'turkish', 'New Staff Created (Welcome Email) [turkish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(866, 'client', 'contact-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(867, 'client', 'contact-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(868, 'client', 'contact-set-password', 'turkish', 'Set New Password [turkish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(869, 'staff', 'staff-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(870, 'staff', 'staff-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(871, 'project', 'assigned-to-project', 'turkish', 'New Project Created (Sent to Customer Contacts) [turkish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(872, 'tasks', 'task-added-attachment-to-contacts', 'turkish', 'New Attachment(s) on Task (Sent to Customer Contacts) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(873, 'tasks', 'task-commented-to-contacts', 'turkish', 'New Comment on Task (Sent to Customer Contacts) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(874, 'leads', 'new-lead-assigned', 'turkish', 'New Lead Assigned to Staff Member [turkish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(875, 'client', 'client-statement', 'turkish', 'Statement - Account Summary [turkish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(876, 'ticket', 'ticket-assigned-to-admin', 'turkish', 'New Ticket Assigned (Sent to Staff) [turkish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(877, 'client', 'new-client-registered-to-admin', 'turkish', 'New Customer Registration (Sent to admins) [turkish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(878, 'leads', 'new-web-to-lead-form-submitted', 'turkish', 'Web to lead form submitted - Sent to lead [turkish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(879, 'staff', 'two-factor-authentication', 'turkish', 'Two Factor Authentication [turkish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(880, 'project', 'project-finished-to-customer', 'turkish', 'Project Marked as Finished (Sent to Customer Contacts) [turkish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(881, 'credit_note', 'credit-note-send-to-client', 'turkish', 'Send Credit Note To Email [turkish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(882, 'tasks', 'task-status-change-to-staff', 'turkish', 'Task Status Changed (Sent to Staff) [turkish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(883, 'tasks', 'task-status-change-to-contacts', 'turkish', 'Task Status Changed (Sent to Customer Contacts) [turkish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(884, 'staff', 'reminder-email-staff', 'turkish', 'Staff Reminder Email [turkish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(885, 'contract', 'contract-comment-to-client', 'turkish', 'New Comment Â (Sent to Customer Contacts) [turkish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(886, 'contract', 'contract-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(887, 'subscriptions', 'send-subscription', 'turkish', 'Send Subscription to Customer [turkish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(888, 'subscriptions', 'subscription-payment-failed', 'turkish', 'Subscription Payment Failed [turkish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(889, 'subscriptions', 'subscription-canceled', 'turkish', 'Subscription Canceled (Sent to customer primary contact) [turkish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(890, 'subscriptions', 'subscription-payment-succeeded', 'turkish', 'Subscription Payment Succeeded (Sent to customer primary contact) [turkish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(891, 'contract', 'contract-expiration-to-staff', 'turkish', 'Contract Expiration Reminder (Sent to Staff) [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(892, 'gdpr', 'gdpr-removal-request', 'turkish', 'Removal Request From Contact (Sent to administrators) [turkish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(893, 'gdpr', 'gdpr-removal-request-lead', 'turkish', 'Removal Request From Lead (Sent to administrators) [turkish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(894, 'client', 'client-registration-confirmed', 'turkish', 'Customer Registration Confirmed [turkish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(895, 'contract', 'contract-signed-to-staff', 'turkish', 'Contract Signed (Sent to Staff) [turkish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(896, 'subscriptions', 'customer-subscribed-to-staff', 'turkish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [turkish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(897, 'client', 'contact-verification-email', 'turkish', 'Email Verification (Sent to Contact After Registration) [turkish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(898, 'client', 'new-customer-profile-file-uploaded-to-staff', 'turkish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [turkish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(899, 'staff', 'event-notification-to-staff', 'turkish', 'Event Notification (Calendar) [turkish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(900, 'subscriptions', 'subscription-payment-requires-action', 'turkish', 'Credit Card Authorization Required - SCA [turkish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(901, 'client', 'new-client-created', 'russian', 'New Contact Added/Registered (Welcome Email) [russian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(902, 'invoice', 'invoice-send-to-client', 'russian', 'Send Invoice to Customer [russian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(903, 'ticket', 'new-ticket-opened-admin', 'russian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(904, 'ticket', 'ticket-reply', 'russian', 'Ticket Reply (Sent to Customer) [russian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(905, 'ticket', 'ticket-autoresponse', 'russian', 'New Ticket Opened - Autoresponse [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(906, 'invoice', 'invoice-payment-recorded', 'russian', 'Invoice Payment Recorded (Sent to Customer) [russian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(907, 'invoice', 'invoice-overdue-notice', 'russian', 'Invoice Overdue Notice [russian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(908, 'invoice', 'invoice-already-send', 'russian', 'Invoice Already Sent to Customer [russian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(909, 'ticket', 'new-ticket-created-staff', 'russian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [russian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(910, 'estimate', 'estimate-send-to-client', 'russian', 'Send Estimate to Customer [russian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(911, 'ticket', 'ticket-reply-to-admin', 'russian', 'Ticket Reply (Sent to Staff) [russian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(912, 'estimate', 'estimate-already-send', 'russian', 'Estimate Already Sent to Customer [russian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(913, 'contract', 'contract-expiration', 'russian', 'Contract Expiration Reminder (Sent to Customer Contacts) [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(914, 'tasks', 'task-assigned', 'russian', 'New Task Assigned (Sent to Staff) [russian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(915, 'tasks', 'task-added-as-follower', 'russian', 'Staff Member Added as Follower on Task (Sent to Staff) [russian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(916, 'tasks', 'task-commented', 'russian', 'New Comment on Task (Sent to Staff) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(917, 'tasks', 'task-added-attachment', 'russian', 'New Attachment(s) on Task (Sent to Staff) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(918, 'estimate', 'estimate-declined-to-staff', 'russian', 'Estimate Declined (Sent to Staff) [russian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(919, 'estimate', 'estimate-accepted-to-staff', 'russian', 'Estimate Accepted (Sent to Staff) [russian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(920, 'proposals', 'proposal-client-accepted', 'russian', 'Customer Action - Accepted (Sent to Staff) [russian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(921, 'proposals', 'proposal-send-to-customer', 'russian', 'Send Proposal to Customer [russian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(922, 'proposals', 'proposal-client-declined', 'russian', 'Customer Action - Declined (Sent to Staff) [russian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(923, 'proposals', 'proposal-client-thank-you', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(924, 'proposals', 'proposal-comment-to-client', 'russian', 'New Comment Â (Sent to Customer/Lead) [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(925, 'proposals', 'proposal-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(926, 'estimate', 'estimate-thank-you-to-customer', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(927, 'tasks', 'task-deadline-notification', 'russian', 'Task Deadline Reminder - Sent to Assigned Members [russian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(928, 'contract', 'send-contract', 'russian', 'Send Contract to Customer [russian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(929, 'invoice', 'invoice-payment-recorded-to-staff', 'russian', 'Invoice Payment Recorded (Sent to Staff) [russian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(930, 'ticket', 'auto-close-ticket', 'russian', 'Auto Close Ticket [russian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(931, 'project', 'new-project-discussion-created-to-staff', 'russian', 'New Project Discussion (Sent to Project Members) [russian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(932, 'project', 'new-project-discussion-created-to-customer', 'russian', 'New Project Discussion (Sent to Customer Contacts) [russian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(933, 'project', 'new-project-file-uploaded-to-customer', 'russian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [russian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(934, 'project', 'new-project-file-uploaded-to-staff', 'russian', 'New Project File(s) Uploaded (Sent to Project Members) [russian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(935, 'project', 'new-project-discussion-comment-to-customer', 'russian', 'New Discussion Comment  (Sent to Customer Contacts) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(936, 'project', 'new-project-discussion-comment-to-staff', 'russian', 'New Discussion Comment (Sent to Project Members) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(937, 'project', 'staff-added-as-project-member', 'russian', 'Staff Added as Project Member [russian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(938, 'estimate', 'estimate-expiry-reminder', 'russian', 'Estimate Expiration Reminder [russian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(939, 'proposals', 'proposal-expiry-reminder', 'russian', 'Proposal Expiration Reminder [russian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(940, 'staff', 'new-staff-created', 'russian', 'New Staff Created (Welcome Email) [russian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(941, 'client', 'contact-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(942, 'client', 'contact-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(943, 'client', 'contact-set-password', 'russian', 'Set New Password [russian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(944, 'staff', 'staff-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(945, 'staff', 'staff-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(946, 'project', 'assigned-to-project', 'russian', 'New Project Created (Sent to Customer Contacts) [russian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(947, 'tasks', 'task-added-attachment-to-contacts', 'russian', 'New Attachment(s) on Task (Sent to Customer Contacts) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(948, 'tasks', 'task-commented-to-contacts', 'russian', 'New Comment on Task (Sent to Customer Contacts) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(949, 'leads', 'new-lead-assigned', 'russian', 'New Lead Assigned to Staff Member [russian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(950, 'client', 'client-statement', 'russian', 'Statement - Account Summary [russian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(951, 'ticket', 'ticket-assigned-to-admin', 'russian', 'New Ticket Assigned (Sent to Staff) [russian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(952, 'client', 'new-client-registered-to-admin', 'russian', 'New Customer Registration (Sent to admins) [russian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(953, 'leads', 'new-web-to-lead-form-submitted', 'russian', 'Web to lead form submitted - Sent to lead [russian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(954, 'staff', 'two-factor-authentication', 'russian', 'Two Factor Authentication [russian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(955, 'project', 'project-finished-to-customer', 'russian', 'Project Marked as Finished (Sent to Customer Contacts) [russian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(956, 'credit_note', 'credit-note-send-to-client', 'russian', 'Send Credit Note To Email [russian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(957, 'tasks', 'task-status-change-to-staff', 'russian', 'Task Status Changed (Sent to Staff) [russian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(958, 'tasks', 'task-status-change-to-contacts', 'russian', 'Task Status Changed (Sent to Customer Contacts) [russian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(959, 'staff', 'reminder-email-staff', 'russian', 'Staff Reminder Email [russian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(960, 'contract', 'contract-comment-to-client', 'russian', 'New Comment Â (Sent to Customer Contacts) [russian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(961, 'contract', 'contract-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(962, 'subscriptions', 'send-subscription', 'russian', 'Send Subscription to Customer [russian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(963, 'subscriptions', 'subscription-payment-failed', 'russian', 'Subscription Payment Failed [russian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(964, 'subscriptions', 'subscription-canceled', 'russian', 'Subscription Canceled (Sent to customer primary contact) [russian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(965, 'subscriptions', 'subscription-payment-succeeded', 'russian', 'Subscription Payment Succeeded (Sent to customer primary contact) [russian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(966, 'contract', 'contract-expiration-to-staff', 'russian', 'Contract Expiration Reminder (Sent to Staff) [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(967, 'gdpr', 'gdpr-removal-request', 'russian', 'Removal Request From Contact (Sent to administrators) [russian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(968, 'gdpr', 'gdpr-removal-request-lead', 'russian', 'Removal Request From Lead (Sent to administrators) [russian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(969, 'client', 'client-registration-confirmed', 'russian', 'Customer Registration Confirmed [russian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(970, 'contract', 'contract-signed-to-staff', 'russian', 'Contract Signed (Sent to Staff) [russian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(971, 'subscriptions', 'customer-subscribed-to-staff', 'russian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [russian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(972, 'client', 'contact-verification-email', 'russian', 'Email Verification (Sent to Contact After Registration) [russian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(973, 'client', 'new-customer-profile-file-uploaded-to-staff', 'russian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [russian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(974, 'staff', 'event-notification-to-staff', 'russian', 'Event Notification (Calendar) [russian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(975, 'subscriptions', 'subscription-payment-requires-action', 'russian', 'Credit Card Authorization Required - SCA [russian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(976, 'client', 'new-client-created', 'italian', 'New Contact Added/Registered (Welcome Email) [italian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(977, 'invoice', 'invoice-send-to-client', 'italian', 'Send Invoice to Customer [italian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(978, 'ticket', 'new-ticket-opened-admin', 'italian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(979, 'ticket', 'ticket-reply', 'italian', 'Ticket Reply (Sent to Customer) [italian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(980, 'ticket', 'ticket-autoresponse', 'italian', 'New Ticket Opened - Autoresponse [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(981, 'invoice', 'invoice-payment-recorded', 'italian', 'Invoice Payment Recorded (Sent to Customer) [italian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(982, 'invoice', 'invoice-overdue-notice', 'italian', 'Invoice Overdue Notice [italian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(983, 'invoice', 'invoice-already-send', 'italian', 'Invoice Already Sent to Customer [italian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(984, 'ticket', 'new-ticket-created-staff', 'italian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [italian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(985, 'estimate', 'estimate-send-to-client', 'italian', 'Send Estimate to Customer [italian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(986, 'ticket', 'ticket-reply-to-admin', 'italian', 'Ticket Reply (Sent to Staff) [italian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(987, 'estimate', 'estimate-already-send', 'italian', 'Estimate Already Sent to Customer [italian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(988, 'contract', 'contract-expiration', 'italian', 'Contract Expiration Reminder (Sent to Customer Contacts) [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(989, 'tasks', 'task-assigned', 'italian', 'New Task Assigned (Sent to Staff) [italian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(990, 'tasks', 'task-added-as-follower', 'italian', 'Staff Member Added as Follower on Task (Sent to Staff) [italian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(991, 'tasks', 'task-commented', 'italian', 'New Comment on Task (Sent to Staff) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(992, 'tasks', 'task-added-attachment', 'italian', 'New Attachment(s) on Task (Sent to Staff) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(993, 'estimate', 'estimate-declined-to-staff', 'italian', 'Estimate Declined (Sent to Staff) [italian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(994, 'estimate', 'estimate-accepted-to-staff', 'italian', 'Estimate Accepted (Sent to Staff) [italian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(995, 'proposals', 'proposal-client-accepted', 'italian', 'Customer Action - Accepted (Sent to Staff) [italian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(996, 'proposals', 'proposal-send-to-customer', 'italian', 'Send Proposal to Customer [italian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(997, 'proposals', 'proposal-client-declined', 'italian', 'Customer Action - Declined (Sent to Staff) [italian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(998, 'proposals', 'proposal-client-thank-you', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(999, 'proposals', 'proposal-comment-to-client', 'italian', 'New Comment Â (Sent to Customer/Lead) [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1000, 'proposals', 'proposal-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1001, 'estimate', 'estimate-thank-you-to-customer', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1002, 'tasks', 'task-deadline-notification', 'italian', 'Task Deadline Reminder - Sent to Assigned Members [italian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1003, 'contract', 'send-contract', 'italian', 'Send Contract to Customer [italian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1004, 'invoice', 'invoice-payment-recorded-to-staff', 'italian', 'Invoice Payment Recorded (Sent to Staff) [italian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1005, 'ticket', 'auto-close-ticket', 'italian', 'Auto Close Ticket [italian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1006, 'project', 'new-project-discussion-created-to-staff', 'italian', 'New Project Discussion (Sent to Project Members) [italian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1007, 'project', 'new-project-discussion-created-to-customer', 'italian', 'New Project Discussion (Sent to Customer Contacts) [italian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1008, 'project', 'new-project-file-uploaded-to-customer', 'italian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [italian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1009, 'project', 'new-project-file-uploaded-to-staff', 'italian', 'New Project File(s) Uploaded (Sent to Project Members) [italian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1010, 'project', 'new-project-discussion-comment-to-customer', 'italian', 'New Discussion Comment  (Sent to Customer Contacts) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1011, 'project', 'new-project-discussion-comment-to-staff', 'italian', 'New Discussion Comment (Sent to Project Members) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1012, 'project', 'staff-added-as-project-member', 'italian', 'Staff Added as Project Member [italian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1013, 'estimate', 'estimate-expiry-reminder', 'italian', 'Estimate Expiration Reminder [italian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1014, 'proposals', 'proposal-expiry-reminder', 'italian', 'Proposal Expiration Reminder [italian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1015, 'staff', 'new-staff-created', 'italian', 'New Staff Created (Welcome Email) [italian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1016, 'client', 'contact-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1017, 'client', 'contact-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1018, 'client', 'contact-set-password', 'italian', 'Set New Password [italian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1019, 'staff', 'staff-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1020, 'staff', 'staff-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1021, 'project', 'assigned-to-project', 'italian', 'New Project Created (Sent to Customer Contacts) [italian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1022, 'tasks', 'task-added-attachment-to-contacts', 'italian', 'New Attachment(s) on Task (Sent to Customer Contacts) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1023, 'tasks', 'task-commented-to-contacts', 'italian', 'New Comment on Task (Sent to Customer Contacts) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1024, 'leads', 'new-lead-assigned', 'italian', 'New Lead Assigned to Staff Member [italian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1025, 'client', 'client-statement', 'italian', 'Statement - Account Summary [italian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1026, 'ticket', 'ticket-assigned-to-admin', 'italian', 'New Ticket Assigned (Sent to Staff) [italian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1027, 'client', 'new-client-registered-to-admin', 'italian', 'New Customer Registration (Sent to admins) [italian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1028, 'leads', 'new-web-to-lead-form-submitted', 'italian', 'Web to lead form submitted - Sent to lead [italian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1029, 'staff', 'two-factor-authentication', 'italian', 'Two Factor Authentication [italian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1030, 'project', 'project-finished-to-customer', 'italian', 'Project Marked as Finished (Sent to Customer Contacts) [italian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1031, 'credit_note', 'credit-note-send-to-client', 'italian', 'Send Credit Note To Email [italian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1032, 'tasks', 'task-status-change-to-staff', 'italian', 'Task Status Changed (Sent to Staff) [italian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1033, 'tasks', 'task-status-change-to-contacts', 'italian', 'Task Status Changed (Sent to Customer Contacts) [italian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1034, 'staff', 'reminder-email-staff', 'italian', 'Staff Reminder Email [italian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1035, 'contract', 'contract-comment-to-client', 'italian', 'New Comment Â (Sent to Customer Contacts) [italian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1036, 'contract', 'contract-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1037, 'subscriptions', 'send-subscription', 'italian', 'Send Subscription to Customer [italian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1038, 'subscriptions', 'subscription-payment-failed', 'italian', 'Subscription Payment Failed [italian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1039, 'subscriptions', 'subscription-canceled', 'italian', 'Subscription Canceled (Sent to customer primary contact) [italian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1040, 'subscriptions', 'subscription-payment-succeeded', 'italian', 'Subscription Payment Succeeded (Sent to customer primary contact) [italian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1041, 'contract', 'contract-expiration-to-staff', 'italian', 'Contract Expiration Reminder (Sent to Staff) [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1042, 'gdpr', 'gdpr-removal-request', 'italian', 'Removal Request From Contact (Sent to administrators) [italian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1043, 'gdpr', 'gdpr-removal-request-lead', 'italian', 'Removal Request From Lead (Sent to administrators) [italian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1044, 'client', 'client-registration-confirmed', 'italian', 'Customer Registration Confirmed [italian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1045, 'contract', 'contract-signed-to-staff', 'italian', 'Contract Signed (Sent to Staff) [italian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1046, 'subscriptions', 'customer-subscribed-to-staff', 'italian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [italian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1047, 'client', 'contact-verification-email', 'italian', 'Email Verification (Sent to Contact After Registration) [italian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1048, 'client', 'new-customer-profile-file-uploaded-to-staff', 'italian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [italian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1049, 'staff', 'event-notification-to-staff', 'italian', 'Event Notification (Calendar) [italian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1050, 'subscriptions', 'subscription-payment-requires-action', 'italian', 'Credit Card Authorization Required - SCA [italian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1051, 'client', 'new-client-created', 'greek', 'New Contact Added/Registered (Welcome Email) [greek]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1052, 'invoice', 'invoice-send-to-client', 'greek', 'Send Invoice to Customer [greek]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1053, 'ticket', 'new-ticket-opened-admin', 'greek', 'New Ticket Opened (Opened by Staff, Sent to Customer) [greek]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1054, 'ticket', 'ticket-reply', 'greek', 'Ticket Reply (Sent to Customer) [greek]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1055, 'ticket', 'ticket-autoresponse', 'greek', 'New Ticket Opened - Autoresponse [greek]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1056, 'invoice', 'invoice-payment-recorded', 'greek', 'Invoice Payment Recorded (Sent to Customer) [greek]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1057, 'invoice', 'invoice-overdue-notice', 'greek', 'Invoice Overdue Notice [greek]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1058, 'invoice', 'invoice-already-send', 'greek', 'Invoice Already Sent to Customer [greek]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1059, 'ticket', 'new-ticket-created-staff', 'greek', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [greek]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1060, 'estimate', 'estimate-send-to-client', 'greek', 'Send Estimate to Customer [greek]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1061, 'ticket', 'ticket-reply-to-admin', 'greek', 'Ticket Reply (Sent to Staff) [greek]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1062, 'estimate', 'estimate-already-send', 'greek', 'Estimate Already Sent to Customer [greek]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1063, 'contract', 'contract-expiration', 'greek', 'Contract Expiration Reminder (Sent to Customer Contacts) [greek]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1064, 'tasks', 'task-assigned', 'greek', 'New Task Assigned (Sent to Staff) [greek]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1065, 'tasks', 'task-added-as-follower', 'greek', 'Staff Member Added as Follower on Task (Sent to Staff) [greek]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1066, 'tasks', 'task-commented', 'greek', 'New Comment on Task (Sent to Staff) [greek]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1067, 'tasks', 'task-added-attachment', 'greek', 'New Attachment(s) on Task (Sent to Staff) [greek]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1068, 'estimate', 'estimate-declined-to-staff', 'greek', 'Estimate Declined (Sent to Staff) [greek]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1069, 'estimate', 'estimate-accepted-to-staff', 'greek', 'Estimate Accepted (Sent to Staff) [greek]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1070, 'proposals', 'proposal-client-accepted', 'greek', 'Customer Action - Accepted (Sent to Staff) [greek]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1071, 'proposals', 'proposal-send-to-customer', 'greek', 'Send Proposal to Customer [greek]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1072, 'proposals', 'proposal-client-declined', 'greek', 'Customer Action - Declined (Sent to Staff) [greek]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1073, 'proposals', 'proposal-client-thank-you', 'greek', 'Thank You Email (Sent to Customer After Accept) [greek]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1074, 'proposals', 'proposal-comment-to-client', 'greek', 'New Comment Â (Sent to Customer/Lead) [greek]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1075, 'proposals', 'proposal-comment-to-admin', 'greek', 'New Comment (Sent to Staff)  [greek]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1076, 'estimate', 'estimate-thank-you-to-customer', 'greek', 'Thank You Email (Sent to Customer After Accept) [greek]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1077, 'tasks', 'task-deadline-notification', 'greek', 'Task Deadline Reminder - Sent to Assigned Members [greek]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1078, 'contract', 'send-contract', 'greek', 'Send Contract to Customer [greek]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1079, 'invoice', 'invoice-payment-recorded-to-staff', 'greek', 'Invoice Payment Recorded (Sent to Staff) [greek]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1080, 'ticket', 'auto-close-ticket', 'greek', 'Auto Close Ticket [greek]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1081, 'project', 'new-project-discussion-created-to-staff', 'greek', 'New Project Discussion (Sent to Project Members) [greek]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1082, 'project', 'new-project-discussion-created-to-customer', 'greek', 'New Project Discussion (Sent to Customer Contacts) [greek]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1083, 'project', 'new-project-file-uploaded-to-customer', 'greek', 'New Project File(s) Uploaded (Sent to Customer Contacts) [greek]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1084, 'project', 'new-project-file-uploaded-to-staff', 'greek', 'New Project File(s) Uploaded (Sent to Project Members) [greek]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1085, 'project', 'new-project-discussion-comment-to-customer', 'greek', 'New Discussion Comment  (Sent to Customer Contacts) [greek]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1086, 'project', 'new-project-discussion-comment-to-staff', 'greek', 'New Discussion Comment (Sent to Project Members) [greek]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1087, 'project', 'staff-added-as-project-member', 'greek', 'Staff Added as Project Member [greek]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1088, 'estimate', 'estimate-expiry-reminder', 'greek', 'Estimate Expiration Reminder [greek]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1089, 'proposals', 'proposal-expiry-reminder', 'greek', 'Proposal Expiration Reminder [greek]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1090, 'staff', 'new-staff-created', 'greek', 'New Staff Created (Welcome Email) [greek]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1091, 'client', 'contact-forgot-password', 'greek', 'Forgot Password [greek]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1092, 'client', 'contact-password-reseted', 'greek', 'Password Reset - Confirmation [greek]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1093, 'client', 'contact-set-password', 'greek', 'Set New Password [greek]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1094, 'staff', 'staff-forgot-password', 'greek', 'Forgot Password [greek]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1095, 'staff', 'staff-password-reseted', 'greek', 'Password Reset - Confirmation [greek]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1096, 'project', 'assigned-to-project', 'greek', 'New Project Created (Sent to Customer Contacts) [greek]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1097, 'tasks', 'task-added-attachment-to-contacts', 'greek', 'New Attachment(s) on Task (Sent to Customer Contacts) [greek]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1098, 'tasks', 'task-commented-to-contacts', 'greek', 'New Comment on Task (Sent to Customer Contacts) [greek]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1099, 'leads', 'new-lead-assigned', 'greek', 'New Lead Assigned to Staff Member [greek]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1100, 'client', 'client-statement', 'greek', 'Statement - Account Summary [greek]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1101, 'ticket', 'ticket-assigned-to-admin', 'greek', 'New Ticket Assigned (Sent to Staff) [greek]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1102, 'client', 'new-client-registered-to-admin', 'greek', 'New Customer Registration (Sent to admins) [greek]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1103, 'leads', 'new-web-to-lead-form-submitted', 'greek', 'Web to lead form submitted - Sent to lead [greek]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1104, 'staff', 'two-factor-authentication', 'greek', 'Two Factor Authentication [greek]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1105, 'project', 'project-finished-to-customer', 'greek', 'Project Marked as Finished (Sent to Customer Contacts) [greek]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1106, 'credit_note', 'credit-note-send-to-client', 'greek', 'Send Credit Note To Email [greek]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1107, 'tasks', 'task-status-change-to-staff', 'greek', 'Task Status Changed (Sent to Staff) [greek]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1108, 'tasks', 'task-status-change-to-contacts', 'greek', 'Task Status Changed (Sent to Customer Contacts) [greek]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1109, 'staff', 'reminder-email-staff', 'greek', 'Staff Reminder Email [greek]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1110, 'contract', 'contract-comment-to-client', 'greek', 'New Comment Â (Sent to Customer Contacts) [greek]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1111, 'contract', 'contract-comment-to-admin', 'greek', 'New Comment (Sent to Staff)  [greek]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1112, 'subscriptions', 'send-subscription', 'greek', 'Send Subscription to Customer [greek]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1113, 'subscriptions', 'subscription-payment-failed', 'greek', 'Subscription Payment Failed [greek]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1114, 'subscriptions', 'subscription-canceled', 'greek', 'Subscription Canceled (Sent to customer primary contact) [greek]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1115, 'subscriptions', 'subscription-payment-succeeded', 'greek', 'Subscription Payment Succeeded (Sent to customer primary contact) [greek]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1116, 'contract', 'contract-expiration-to-staff', 'greek', 'Contract Expiration Reminder (Sent to Staff) [greek]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1117, 'gdpr', 'gdpr-removal-request', 'greek', 'Removal Request From Contact (Sent to administrators) [greek]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1118, 'gdpr', 'gdpr-removal-request-lead', 'greek', 'Removal Request From Lead (Sent to administrators) [greek]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1119, 'client', 'client-registration-confirmed', 'greek', 'Customer Registration Confirmed [greek]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1120, 'contract', 'contract-signed-to-staff', 'greek', 'Contract Signed (Sent to Staff) [greek]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1121, 'subscriptions', 'customer-subscribed-to-staff', 'greek', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [greek]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1122, 'client', 'contact-verification-email', 'greek', 'Email Verification (Sent to Contact After Registration) [greek]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1123, 'client', 'new-customer-profile-file-uploaded-to-staff', 'greek', 'New Customer Profile File(s) Uploaded (Sent to Staff) [greek]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1124, 'staff', 'event-notification-to-staff', 'greek', 'Event Notification (Calendar) [greek]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1125, 'subscriptions', 'subscription-payment-requires-action', 'greek', 'Credit Card Authorization Required - SCA [greek]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1126, 'client', 'new-client-created', 'portuguese_br', 'New Contact Added/Registered (Welcome Email) [portuguese_br]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1127, 'invoice', 'invoice-send-to-client', 'portuguese_br', 'Send Invoice to Customer [portuguese_br]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1128, 'ticket', 'new-ticket-opened-admin', 'portuguese_br', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1129, 'ticket', 'ticket-reply', 'portuguese_br', 'Ticket Reply (Sent to Customer) [portuguese_br]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1130, 'ticket', 'ticket-autoresponse', 'portuguese_br', 'New Ticket Opened - Autoresponse [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1131, 'invoice', 'invoice-payment-recorded', 'portuguese_br', 'Invoice Payment Recorded (Sent to Customer) [portuguese_br]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1132, 'invoice', 'invoice-overdue-notice', 'portuguese_br', 'Invoice Overdue Notice [portuguese_br]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1133, 'invoice', 'invoice-already-send', 'portuguese_br', 'Invoice Already Sent to Customer [portuguese_br]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1134, 'ticket', 'new-ticket-created-staff', 'portuguese_br', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese_br]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1135, 'estimate', 'estimate-send-to-client', 'portuguese_br', 'Send Estimate to Customer [portuguese_br]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1136, 'ticket', 'ticket-reply-to-admin', 'portuguese_br', 'Ticket Reply (Sent to Staff) [portuguese_br]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1137, 'estimate', 'estimate-already-send', 'portuguese_br', 'Estimate Already Sent to Customer [portuguese_br]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1138, 'contract', 'contract-expiration', 'portuguese_br', 'Contract Expiration Reminder (Sent to Customer Contacts) [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1139, 'tasks', 'task-assigned', 'portuguese_br', 'New Task Assigned (Sent to Staff) [portuguese_br]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1140, 'tasks', 'task-added-as-follower', 'portuguese_br', 'Staff Member Added as Follower on Task (Sent to Staff) [portuguese_br]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1141, 'tasks', 'task-commented', 'portuguese_br', 'New Comment on Task (Sent to Staff) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1142, 'tasks', 'task-added-attachment', 'portuguese_br', 'New Attachment(s) on Task (Sent to Staff) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1143, 'estimate', 'estimate-declined-to-staff', 'portuguese_br', 'Estimate Declined (Sent to Staff) [portuguese_br]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1144, 'estimate', 'estimate-accepted-to-staff', 'portuguese_br', 'Estimate Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1145, 'proposals', 'proposal-client-accepted', 'portuguese_br', 'Customer Action - Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1146, 'proposals', 'proposal-send-to-customer', 'portuguese_br', 'Send Proposal to Customer [portuguese_br]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1147, 'proposals', 'proposal-client-declined', 'portuguese_br', 'Customer Action - Declined (Sent to Staff) [portuguese_br]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1148, 'proposals', 'proposal-client-thank-you', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1149, 'proposals', 'proposal-comment-to-client', 'portuguese_br', 'New Comment Â (Sent to Customer/Lead) [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1150, 'proposals', 'proposal-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1151, 'estimate', 'estimate-thank-you-to-customer', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1152, 'tasks', 'task-deadline-notification', 'portuguese_br', 'Task Deadline Reminder - Sent to Assigned Members [portuguese_br]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1153, 'contract', 'send-contract', 'portuguese_br', 'Send Contract to Customer [portuguese_br]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1154, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese_br', 'Invoice Payment Recorded (Sent to Staff) [portuguese_br]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1155, 'ticket', 'auto-close-ticket', 'portuguese_br', 'Auto Close Ticket [portuguese_br]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1156, 'project', 'new-project-discussion-created-to-staff', 'portuguese_br', 'New Project Discussion (Sent to Project Members) [portuguese_br]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1157, 'project', 'new-project-discussion-created-to-customer', 'portuguese_br', 'New Project Discussion (Sent to Customer Contacts) [portuguese_br]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1158, 'project', 'new-project-file-uploaded-to-customer', 'portuguese_br', 'New Project File(s) Uploaded (Sent to Customer Contacts) [portuguese_br]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1159, 'project', 'new-project-file-uploaded-to-staff', 'portuguese_br', 'New Project File(s) Uploaded (Sent to Project Members) [portuguese_br]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1160, 'project', 'new-project-discussion-comment-to-customer', 'portuguese_br', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1161, 'project', 'new-project-discussion-comment-to-staff', 'portuguese_br', 'New Discussion Comment (Sent to Project Members) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1162, 'project', 'staff-added-as-project-member', 'portuguese_br', 'Staff Added as Project Member [portuguese_br]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1163, 'estimate', 'estimate-expiry-reminder', 'portuguese_br', 'Estimate Expiration Reminder [portuguese_br]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1164, 'proposals', 'proposal-expiry-reminder', 'portuguese_br', 'Proposal Expiration Reminder [portuguese_br]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1165, 'staff', 'new-staff-created', 'portuguese_br', 'New Staff Created (Welcome Email) [portuguese_br]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1166, 'client', 'contact-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1167, 'client', 'contact-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1168, 'client', 'contact-set-password', 'portuguese_br', 'Set New Password [portuguese_br]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1169, 'staff', 'staff-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1170, 'staff', 'staff-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1171, 'project', 'assigned-to-project', 'portuguese_br', 'New Project Created (Sent to Customer Contacts) [portuguese_br]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1172, 'tasks', 'task-added-attachment-to-contacts', 'portuguese_br', 'New Attachment(s) on Task (Sent to Customer Contacts) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1173, 'tasks', 'task-commented-to-contacts', 'portuguese_br', 'New Comment on Task (Sent to Customer Contacts) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1174, 'leads', 'new-lead-assigned', 'portuguese_br', 'New Lead Assigned to Staff Member [portuguese_br]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1175, 'client', 'client-statement', 'portuguese_br', 'Statement - Account Summary [portuguese_br]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1176, 'ticket', 'ticket-assigned-to-admin', 'portuguese_br', 'New Ticket Assigned (Sent to Staff) [portuguese_br]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1177, 'client', 'new-client-registered-to-admin', 'portuguese_br', 'New Customer Registration (Sent to admins) [portuguese_br]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1178, 'leads', 'new-web-to-lead-form-submitted', 'portuguese_br', 'Web to lead form submitted - Sent to lead [portuguese_br]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1179, 'staff', 'two-factor-authentication', 'portuguese_br', 'Two Factor Authentication [portuguese_br]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1180, 'project', 'project-finished-to-customer', 'portuguese_br', 'Project Marked as Finished (Sent to Customer Contacts) [portuguese_br]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1181, 'credit_note', 'credit-note-send-to-client', 'portuguese_br', 'Send Credit Note To Email [portuguese_br]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1182, 'tasks', 'task-status-change-to-staff', 'portuguese_br', 'Task Status Changed (Sent to Staff) [portuguese_br]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1183, 'tasks', 'task-status-change-to-contacts', 'portuguese_br', 'Task Status Changed (Sent to Customer Contacts) [portuguese_br]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1184, 'staff', 'reminder-email-staff', 'portuguese_br', 'Staff Reminder Email [portuguese_br]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1185, 'contract', 'contract-comment-to-client', 'portuguese_br', 'New Comment Â (Sent to Customer Contacts) [portuguese_br]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1186, 'contract', 'contract-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1187, 'subscriptions', 'send-subscription', 'portuguese_br', 'Send Subscription to Customer [portuguese_br]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1188, 'subscriptions', 'subscription-payment-failed', 'portuguese_br', 'Subscription Payment Failed [portuguese_br]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1189, 'subscriptions', 'subscription-canceled', 'portuguese_br', 'Subscription Canceled (Sent to customer primary contact) [portuguese_br]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1190, 'subscriptions', 'subscription-payment-succeeded', 'portuguese_br', 'Subscription Payment Succeeded (Sent to customer primary contact) [portuguese_br]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1191, 'contract', 'contract-expiration-to-staff', 'portuguese_br', 'Contract Expiration Reminder (Sent to Staff) [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1192, 'gdpr', 'gdpr-removal-request', 'portuguese_br', 'Removal Request From Contact (Sent to administrators) [portuguese_br]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1193, 'gdpr', 'gdpr-removal-request-lead', 'portuguese_br', 'Removal Request From Lead (Sent to administrators) [portuguese_br]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1194, 'client', 'client-registration-confirmed', 'portuguese_br', 'Customer Registration Confirmed [portuguese_br]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1195, 'contract', 'contract-signed-to-staff', 'portuguese_br', 'Contract Signed (Sent to Staff) [portuguese_br]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1196, 'subscriptions', 'customer-subscribed-to-staff', 'portuguese_br', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [portuguese_br]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1197, 'client', 'contact-verification-email', 'portuguese_br', 'Email Verification (Sent to Contact After Registration) [portuguese_br]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1198, 'client', 'new-customer-profile-file-uploaded-to-staff', 'portuguese_br', 'New Customer Profile File(s) Uploaded (Sent to Staff) [portuguese_br]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1199, 'staff', 'event-notification-to-staff', 'portuguese_br', 'Event Notification (Calendar) [portuguese_br]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1200, 'subscriptions', 'subscription-payment-requires-action', 'portuguese_br', 'Credit Card Authorization Required - SCA [portuguese_br]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1201, 'client', 'new-client-created', 'portuguese', 'New Contact Added/Registered (Welcome Email) [portuguese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1202, 'invoice', 'invoice-send-to-client', 'portuguese', 'Send Invoice to Customer [portuguese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1203, 'ticket', 'new-ticket-opened-admin', 'portuguese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1204, 'ticket', 'ticket-reply', 'portuguese', 'Ticket Reply (Sent to Customer) [portuguese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1205, 'ticket', 'ticket-autoresponse', 'portuguese', 'New Ticket Opened - Autoresponse [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1206, 'invoice', 'invoice-payment-recorded', 'portuguese', 'Invoice Payment Recorded (Sent to Customer) [portuguese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1207, 'invoice', 'invoice-overdue-notice', 'portuguese', 'Invoice Overdue Notice [portuguese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1208, 'invoice', 'invoice-already-send', 'portuguese', 'Invoice Already Sent to Customer [portuguese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1209, 'ticket', 'new-ticket-created-staff', 'portuguese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1210, 'estimate', 'estimate-send-to-client', 'portuguese', 'Send Estimate to Customer [portuguese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1211, 'ticket', 'ticket-reply-to-admin', 'portuguese', 'Ticket Reply (Sent to Staff) [portuguese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1212, 'estimate', 'estimate-already-send', 'portuguese', 'Estimate Already Sent to Customer [portuguese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1213, 'contract', 'contract-expiration', 'portuguese', 'Contract Expiration Reminder (Sent to Customer Contacts) [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1214, 'tasks', 'task-assigned', 'portuguese', 'New Task Assigned (Sent to Staff) [portuguese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1215, 'tasks', 'task-added-as-follower', 'portuguese', 'Staff Member Added as Follower on Task (Sent to Staff) [portuguese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1216, 'tasks', 'task-commented', 'portuguese', 'New Comment on Task (Sent to Staff) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1217, 'tasks', 'task-added-attachment', 'portuguese', 'New Attachment(s) on Task (Sent to Staff) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1218, 'estimate', 'estimate-declined-to-staff', 'portuguese', 'Estimate Declined (Sent to Staff) [portuguese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1219, 'estimate', 'estimate-accepted-to-staff', 'portuguese', 'Estimate Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1220, 'proposals', 'proposal-client-accepted', 'portuguese', 'Customer Action - Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1221, 'proposals', 'proposal-send-to-customer', 'portuguese', 'Send Proposal to Customer [portuguese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1222, 'proposals', 'proposal-client-declined', 'portuguese', 'Customer Action - Declined (Sent to Staff) [portuguese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1223, 'proposals', 'proposal-client-thank-you', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1224, 'proposals', 'proposal-comment-to-client', 'portuguese', 'New Comment Â (Sent to Customer/Lead) [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1225, 'proposals', 'proposal-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1226, 'estimate', 'estimate-thank-you-to-customer', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1227, 'tasks', 'task-deadline-notification', 'portuguese', 'Task Deadline Reminder - Sent to Assigned Members [portuguese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1228, 'contract', 'send-contract', 'portuguese', 'Send Contract to Customer [portuguese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1229, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese', 'Invoice Payment Recorded (Sent to Staff) [portuguese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1230, 'ticket', 'auto-close-ticket', 'portuguese', 'Auto Close Ticket [portuguese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1231, 'project', 'new-project-discussion-created-to-staff', 'portuguese', 'New Project Discussion (Sent to Project Members) [portuguese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1232, 'project', 'new-project-discussion-created-to-customer', 'portuguese', 'New Project Discussion (Sent to Customer Contacts) [portuguese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1233, 'project', 'new-project-file-uploaded-to-customer', 'portuguese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [portuguese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1234, 'project', 'new-project-file-uploaded-to-staff', 'portuguese', 'New Project File(s) Uploaded (Sent to Project Members) [portuguese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1235, 'project', 'new-project-discussion-comment-to-customer', 'portuguese', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1236, 'project', 'new-project-discussion-comment-to-staff', 'portuguese', 'New Discussion Comment (Sent to Project Members) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1237, 'project', 'staff-added-as-project-member', 'portuguese', 'Staff Added as Project Member [portuguese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1238, 'estimate', 'estimate-expiry-reminder', 'portuguese', 'Estimate Expiration Reminder [portuguese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1239, 'proposals', 'proposal-expiry-reminder', 'portuguese', 'Proposal Expiration Reminder [portuguese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1240, 'staff', 'new-staff-created', 'portuguese', 'New Staff Created (Welcome Email) [portuguese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1241, 'client', 'contact-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1242, 'client', 'contact-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1243, 'client', 'contact-set-password', 'portuguese', 'Set New Password [portuguese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1244, 'staff', 'staff-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1245, 'staff', 'staff-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1246, 'project', 'assigned-to-project', 'portuguese', 'New Project Created (Sent to Customer Contacts) [portuguese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1247, 'tasks', 'task-added-attachment-to-contacts', 'portuguese', 'New Attachment(s) on Task (Sent to Customer Contacts) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1248, 'tasks', 'task-commented-to-contacts', 'portuguese', 'New Comment on Task (Sent to Customer Contacts) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1249, 'leads', 'new-lead-assigned', 'portuguese', 'New Lead Assigned to Staff Member [portuguese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1250, 'client', 'client-statement', 'portuguese', 'Statement - Account Summary [portuguese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1251, 'ticket', 'ticket-assigned-to-admin', 'portuguese', 'New Ticket Assigned (Sent to Staff) [portuguese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1252, 'client', 'new-client-registered-to-admin', 'portuguese', 'New Customer Registration (Sent to admins) [portuguese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1253, 'leads', 'new-web-to-lead-form-submitted', 'portuguese', 'Web to lead form submitted - Sent to lead [portuguese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1254, 'staff', 'two-factor-authentication', 'portuguese', 'Two Factor Authentication [portuguese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1255, 'project', 'project-finished-to-customer', 'portuguese', 'Project Marked as Finished (Sent to Customer Contacts) [portuguese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1256, 'credit_note', 'credit-note-send-to-client', 'portuguese', 'Send Credit Note To Email [portuguese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1257, 'tasks', 'task-status-change-to-staff', 'portuguese', 'Task Status Changed (Sent to Staff) [portuguese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1258, 'tasks', 'task-status-change-to-contacts', 'portuguese', 'Task Status Changed (Sent to Customer Contacts) [portuguese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1259, 'staff', 'reminder-email-staff', 'portuguese', 'Staff Reminder Email [portuguese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1260, 'contract', 'contract-comment-to-client', 'portuguese', 'New Comment Â (Sent to Customer Contacts) [portuguese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1261, 'contract', 'contract-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1262, 'subscriptions', 'send-subscription', 'portuguese', 'Send Subscription to Customer [portuguese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1263, 'subscriptions', 'subscription-payment-failed', 'portuguese', 'Subscription Payment Failed [portuguese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1264, 'subscriptions', 'subscription-canceled', 'portuguese', 'Subscription Canceled (Sent to customer primary contact) [portuguese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1265, 'subscriptions', 'subscription-payment-succeeded', 'portuguese', 'Subscription Payment Succeeded (Sent to customer primary contact) [portuguese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1266, 'contract', 'contract-expiration-to-staff', 'portuguese', 'Contract Expiration Reminder (Sent to Staff) [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1267, 'gdpr', 'gdpr-removal-request', 'portuguese', 'Removal Request From Contact (Sent to administrators) [portuguese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1268, 'gdpr', 'gdpr-removal-request-lead', 'portuguese', 'Removal Request From Lead (Sent to administrators) [portuguese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1269, 'client', 'client-registration-confirmed', 'portuguese', 'Customer Registration Confirmed [portuguese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1270, 'contract', 'contract-signed-to-staff', 'portuguese', 'Contract Signed (Sent to Staff) [portuguese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1271, 'subscriptions', 'customer-subscribed-to-staff', 'portuguese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [portuguese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1272, 'client', 'contact-verification-email', 'portuguese', 'Email Verification (Sent to Contact After Registration) [portuguese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1273, 'client', 'new-customer-profile-file-uploaded-to-staff', 'portuguese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [portuguese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1274, 'staff', 'event-notification-to-staff', 'portuguese', 'Event Notification (Calendar) [portuguese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1275, 'subscriptions', 'subscription-payment-requires-action', 'portuguese', 'Credit Card Authorization Required - SCA [portuguese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1276, 'client', 'new-client-created', 'polish', 'New Contact Added/Registered (Welcome Email) [polish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1277, 'invoice', 'invoice-send-to-client', 'polish', 'Send Invoice to Customer [polish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1278, 'ticket', 'new-ticket-opened-admin', 'polish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1279, 'ticket', 'ticket-reply', 'polish', 'Ticket Reply (Sent to Customer) [polish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1280, 'ticket', 'ticket-autoresponse', 'polish', 'New Ticket Opened - Autoresponse [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1281, 'invoice', 'invoice-payment-recorded', 'polish', 'Invoice Payment Recorded (Sent to Customer) [polish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1282, 'invoice', 'invoice-overdue-notice', 'polish', 'Invoice Overdue Notice [polish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1283, 'invoice', 'invoice-already-send', 'polish', 'Invoice Already Sent to Customer [polish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1284, 'ticket', 'new-ticket-created-staff', 'polish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [polish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1285, 'estimate', 'estimate-send-to-client', 'polish', 'Send Estimate to Customer [polish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1286, 'ticket', 'ticket-reply-to-admin', 'polish', 'Ticket Reply (Sent to Staff) [polish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1287, 'estimate', 'estimate-already-send', 'polish', 'Estimate Already Sent to Customer [polish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1288, 'contract', 'contract-expiration', 'polish', 'Contract Expiration Reminder (Sent to Customer Contacts) [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1289, 'tasks', 'task-assigned', 'polish', 'New Task Assigned (Sent to Staff) [polish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1290, 'tasks', 'task-added-as-follower', 'polish', 'Staff Member Added as Follower on Task (Sent to Staff) [polish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1291, 'tasks', 'task-commented', 'polish', 'New Comment on Task (Sent to Staff) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1292, 'tasks', 'task-added-attachment', 'polish', 'New Attachment(s) on Task (Sent to Staff) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1293, 'estimate', 'estimate-declined-to-staff', 'polish', 'Estimate Declined (Sent to Staff) [polish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1294, 'estimate', 'estimate-accepted-to-staff', 'polish', 'Estimate Accepted (Sent to Staff) [polish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1295, 'proposals', 'proposal-client-accepted', 'polish', 'Customer Action - Accepted (Sent to Staff) [polish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1296, 'proposals', 'proposal-send-to-customer', 'polish', 'Send Proposal to Customer [polish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1297, 'proposals', 'proposal-client-declined', 'polish', 'Customer Action - Declined (Sent to Staff) [polish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1298, 'proposals', 'proposal-client-thank-you', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1299, 'proposals', 'proposal-comment-to-client', 'polish', 'New Comment Â (Sent to Customer/Lead) [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1300, 'proposals', 'proposal-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1301, 'estimate', 'estimate-thank-you-to-customer', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1302, 'tasks', 'task-deadline-notification', 'polish', 'Task Deadline Reminder - Sent to Assigned Members [polish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1303, 'contract', 'send-contract', 'polish', 'Send Contract to Customer [polish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1304, 'invoice', 'invoice-payment-recorded-to-staff', 'polish', 'Invoice Payment Recorded (Sent to Staff) [polish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1305, 'ticket', 'auto-close-ticket', 'polish', 'Auto Close Ticket [polish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1306, 'project', 'new-project-discussion-created-to-staff', 'polish', 'New Project Discussion (Sent to Project Members) [polish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1307, 'project', 'new-project-discussion-created-to-customer', 'polish', 'New Project Discussion (Sent to Customer Contacts) [polish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1308, 'project', 'new-project-file-uploaded-to-customer', 'polish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [polish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1309, 'project', 'new-project-file-uploaded-to-staff', 'polish', 'New Project File(s) Uploaded (Sent to Project Members) [polish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1310, 'project', 'new-project-discussion-comment-to-customer', 'polish', 'New Discussion Comment  (Sent to Customer Contacts) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1311, 'project', 'new-project-discussion-comment-to-staff', 'polish', 'New Discussion Comment (Sent to Project Members) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1312, 'project', 'staff-added-as-project-member', 'polish', 'Staff Added as Project Member [polish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1313, 'estimate', 'estimate-expiry-reminder', 'polish', 'Estimate Expiration Reminder [polish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1314, 'proposals', 'proposal-expiry-reminder', 'polish', 'Proposal Expiration Reminder [polish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1315, 'staff', 'new-staff-created', 'polish', 'New Staff Created (Welcome Email) [polish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1316, 'client', 'contact-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1317, 'client', 'contact-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1318, 'client', 'contact-set-password', 'polish', 'Set New Password [polish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1319, 'staff', 'staff-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1320, 'staff', 'staff-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1321, 'project', 'assigned-to-project', 'polish', 'New Project Created (Sent to Customer Contacts) [polish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1322, 'tasks', 'task-added-attachment-to-contacts', 'polish', 'New Attachment(s) on Task (Sent to Customer Contacts) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1323, 'tasks', 'task-commented-to-contacts', 'polish', 'New Comment on Task (Sent to Customer Contacts) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1324, 'leads', 'new-lead-assigned', 'polish', 'New Lead Assigned to Staff Member [polish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1325, 'client', 'client-statement', 'polish', 'Statement - Account Summary [polish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1326, 'ticket', 'ticket-assigned-to-admin', 'polish', 'New Ticket Assigned (Sent to Staff) [polish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1327, 'client', 'new-client-registered-to-admin', 'polish', 'New Customer Registration (Sent to admins) [polish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1328, 'leads', 'new-web-to-lead-form-submitted', 'polish', 'Web to lead form submitted - Sent to lead [polish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1329, 'staff', 'two-factor-authentication', 'polish', 'Two Factor Authentication [polish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1330, 'project', 'project-finished-to-customer', 'polish', 'Project Marked as Finished (Sent to Customer Contacts) [polish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1331, 'credit_note', 'credit-note-send-to-client', 'polish', 'Send Credit Note To Email [polish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1332, 'tasks', 'task-status-change-to-staff', 'polish', 'Task Status Changed (Sent to Staff) [polish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1333, 'tasks', 'task-status-change-to-contacts', 'polish', 'Task Status Changed (Sent to Customer Contacts) [polish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1334, 'staff', 'reminder-email-staff', 'polish', 'Staff Reminder Email [polish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1335, 'contract', 'contract-comment-to-client', 'polish', 'New Comment Â (Sent to Customer Contacts) [polish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1336, 'contract', 'contract-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1337, 'subscriptions', 'send-subscription', 'polish', 'Send Subscription to Customer [polish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1338, 'subscriptions', 'subscription-payment-failed', 'polish', 'Subscription Payment Failed [polish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1339, 'subscriptions', 'subscription-canceled', 'polish', 'Subscription Canceled (Sent to customer primary contact) [polish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1340, 'subscriptions', 'subscription-payment-succeeded', 'polish', 'Subscription Payment Succeeded (Sent to customer primary contact) [polish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1341, 'contract', 'contract-expiration-to-staff', 'polish', 'Contract Expiration Reminder (Sent to Staff) [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1342, 'gdpr', 'gdpr-removal-request', 'polish', 'Removal Request From Contact (Sent to administrators) [polish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1343, 'gdpr', 'gdpr-removal-request-lead', 'polish', 'Removal Request From Lead (Sent to administrators) [polish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1344, 'client', 'client-registration-confirmed', 'polish', 'Customer Registration Confirmed [polish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1345, 'contract', 'contract-signed-to-staff', 'polish', 'Contract Signed (Sent to Staff) [polish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1346, 'subscriptions', 'customer-subscribed-to-staff', 'polish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [polish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1347, 'client', 'contact-verification-email', 'polish', 'Email Verification (Sent to Contact After Registration) [polish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1348, 'client', 'new-customer-profile-file-uploaded-to-staff', 'polish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [polish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1349, 'staff', 'event-notification-to-staff', 'polish', 'Event Notification (Calendar) [polish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1350, 'subscriptions', 'subscription-payment-requires-action', 'polish', 'Credit Card Authorization Required - SCA [polish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1351, 'client', 'new-client-created', 'french', 'New Contact Added/Registered (Welcome Email) [french]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1352, 'invoice', 'invoice-send-to-client', 'french', 'Send Invoice to Customer [french]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1353, 'ticket', 'new-ticket-opened-admin', 'french', 'New Ticket Opened (Opened by Staff, Sent to Customer) [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1354, 'ticket', 'ticket-reply', 'french', 'Ticket Reply (Sent to Customer) [french]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1355, 'ticket', 'ticket-autoresponse', 'french', 'New Ticket Opened - Autoresponse [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1356, 'invoice', 'invoice-payment-recorded', 'french', 'Invoice Payment Recorded (Sent to Customer) [french]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1357, 'invoice', 'invoice-overdue-notice', 'french', 'Invoice Overdue Notice [french]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1358, 'invoice', 'invoice-already-send', 'french', 'Invoice Already Sent to Customer [french]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1359, 'ticket', 'new-ticket-created-staff', 'french', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [french]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1360, 'estimate', 'estimate-send-to-client', 'french', 'Send Estimate to Customer [french]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1361, 'ticket', 'ticket-reply-to-admin', 'french', 'Ticket Reply (Sent to Staff) [french]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1362, 'estimate', 'estimate-already-send', 'french', 'Estimate Already Sent to Customer [french]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1363, 'contract', 'contract-expiration', 'french', 'Contract Expiration Reminder (Sent to Customer Contacts) [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1364, 'tasks', 'task-assigned', 'french', 'New Task Assigned (Sent to Staff) [french]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1365, 'tasks', 'task-added-as-follower', 'french', 'Staff Member Added as Follower on Task (Sent to Staff) [french]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1366, 'tasks', 'task-commented', 'french', 'New Comment on Task (Sent to Staff) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1367, 'tasks', 'task-added-attachment', 'french', 'New Attachment(s) on Task (Sent to Staff) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1368, 'estimate', 'estimate-declined-to-staff', 'french', 'Estimate Declined (Sent to Staff) [french]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1369, 'estimate', 'estimate-accepted-to-staff', 'french', 'Estimate Accepted (Sent to Staff) [french]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1370, 'proposals', 'proposal-client-accepted', 'french', 'Customer Action - Accepted (Sent to Staff) [french]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1371, 'proposals', 'proposal-send-to-customer', 'french', 'Send Proposal to Customer [french]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1372, 'proposals', 'proposal-client-declined', 'french', 'Customer Action - Declined (Sent to Staff) [french]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1373, 'proposals', 'proposal-client-thank-you', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1374, 'proposals', 'proposal-comment-to-client', 'french', 'New Comment Â (Sent to Customer/Lead) [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1375, 'proposals', 'proposal-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1376, 'estimate', 'estimate-thank-you-to-customer', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1377, 'tasks', 'task-deadline-notification', 'french', 'Task Deadline Reminder - Sent to Assigned Members [french]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1378, 'contract', 'send-contract', 'french', 'Send Contract to Customer [french]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1379, 'invoice', 'invoice-payment-recorded-to-staff', 'french', 'Invoice Payment Recorded (Sent to Staff) [french]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1380, 'ticket', 'auto-close-ticket', 'french', 'Auto Close Ticket [french]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1381, 'project', 'new-project-discussion-created-to-staff', 'french', 'New Project Discussion (Sent to Project Members) [french]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1382, 'project', 'new-project-discussion-created-to-customer', 'french', 'New Project Discussion (Sent to Customer Contacts) [french]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1383, 'project', 'new-project-file-uploaded-to-customer', 'french', 'New Project File(s) Uploaded (Sent to Customer Contacts) [french]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1384, 'project', 'new-project-file-uploaded-to-staff', 'french', 'New Project File(s) Uploaded (Sent to Project Members) [french]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1385, 'project', 'new-project-discussion-comment-to-customer', 'french', 'New Discussion Comment  (Sent to Customer Contacts) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1386, 'project', 'new-project-discussion-comment-to-staff', 'french', 'New Discussion Comment (Sent to Project Members) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1387, 'project', 'staff-added-as-project-member', 'french', 'Staff Added as Project Member [french]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1388, 'estimate', 'estimate-expiry-reminder', 'french', 'Estimate Expiration Reminder [french]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1389, 'proposals', 'proposal-expiry-reminder', 'french', 'Proposal Expiration Reminder [french]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1390, 'staff', 'new-staff-created', 'french', 'New Staff Created (Welcome Email) [french]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1391, 'client', 'contact-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1392, 'client', 'contact-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1393, 'client', 'contact-set-password', 'french', 'Set New Password [french]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1394, 'staff', 'staff-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1395, 'staff', 'staff-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1396, 'project', 'assigned-to-project', 'french', 'New Project Created (Sent to Customer Contacts) [french]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1397, 'tasks', 'task-added-attachment-to-contacts', 'french', 'New Attachment(s) on Task (Sent to Customer Contacts) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1398, 'tasks', 'task-commented-to-contacts', 'french', 'New Comment on Task (Sent to Customer Contacts) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1399, 'leads', 'new-lead-assigned', 'french', 'New Lead Assigned to Staff Member [french]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1400, 'client', 'client-statement', 'french', 'Statement - Account Summary [french]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1401, 'ticket', 'ticket-assigned-to-admin', 'french', 'New Ticket Assigned (Sent to Staff) [french]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1402, 'client', 'new-client-registered-to-admin', 'french', 'New Customer Registration (Sent to admins) [french]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1403, 'leads', 'new-web-to-lead-form-submitted', 'french', 'Web to lead form submitted - Sent to lead [french]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1404, 'staff', 'two-factor-authentication', 'french', 'Two Factor Authentication [french]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1405, 'project', 'project-finished-to-customer', 'french', 'Project Marked as Finished (Sent to Customer Contacts) [french]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1406, 'credit_note', 'credit-note-send-to-client', 'french', 'Send Credit Note To Email [french]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1407, 'tasks', 'task-status-change-to-staff', 'french', 'Task Status Changed (Sent to Staff) [french]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1408, 'tasks', 'task-status-change-to-contacts', 'french', 'Task Status Changed (Sent to Customer Contacts) [french]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1409, 'staff', 'reminder-email-staff', 'french', 'Staff Reminder Email [french]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1410, 'contract', 'contract-comment-to-client', 'french', 'New Comment Â (Sent to Customer Contacts) [french]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1411, 'contract', 'contract-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1412, 'subscriptions', 'send-subscription', 'french', 'Send Subscription to Customer [french]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1413, 'subscriptions', 'subscription-payment-failed', 'french', 'Subscription Payment Failed [french]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1414, 'subscriptions', 'subscription-canceled', 'french', 'Subscription Canceled (Sent to customer primary contact) [french]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1415, 'subscriptions', 'subscription-payment-succeeded', 'french', 'Subscription Payment Succeeded (Sent to customer primary contact) [french]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1416, 'contract', 'contract-expiration-to-staff', 'french', 'Contract Expiration Reminder (Sent to Staff) [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1417, 'gdpr', 'gdpr-removal-request', 'french', 'Removal Request From Contact (Sent to administrators) [french]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1418, 'gdpr', 'gdpr-removal-request-lead', 'french', 'Removal Request From Lead (Sent to administrators) [french]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1419, 'client', 'client-registration-confirmed', 'french', 'Customer Registration Confirmed [french]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1420, 'contract', 'contract-signed-to-staff', 'french', 'Contract Signed (Sent to Staff) [french]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1421, 'subscriptions', 'customer-subscribed-to-staff', 'french', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [french]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1422, 'client', 'contact-verification-email', 'french', 'Email Verification (Sent to Contact After Registration) [french]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1423, 'client', 'new-customer-profile-file-uploaded-to-staff', 'french', 'New Customer Profile File(s) Uploaded (Sent to Staff) [french]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1424, 'staff', 'event-notification-to-staff', 'french', 'Event Notification (Calendar) [french]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1425, 'subscriptions', 'subscription-payment-requires-action', 'french', 'Credit Card Authorization Required - SCA [french]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1426, 'client', 'new-client-created', 'swedish', 'New Contact Added/Registered (Welcome Email) [swedish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1427, 'invoice', 'invoice-send-to-client', 'swedish', 'Send Invoice to Customer [swedish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1428, 'ticket', 'new-ticket-opened-admin', 'swedish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1429, 'ticket', 'ticket-reply', 'swedish', 'Ticket Reply (Sent to Customer) [swedish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1430, 'ticket', 'ticket-autoresponse', 'swedish', 'New Ticket Opened - Autoresponse [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1431, 'invoice', 'invoice-payment-recorded', 'swedish', 'Invoice Payment Recorded (Sent to Customer) [swedish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1432, 'invoice', 'invoice-overdue-notice', 'swedish', 'Invoice Overdue Notice [swedish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1433, 'invoice', 'invoice-already-send', 'swedish', 'Invoice Already Sent to Customer [swedish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1434, 'ticket', 'new-ticket-created-staff', 'swedish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [swedish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1435, 'estimate', 'estimate-send-to-client', 'swedish', 'Send Estimate to Customer [swedish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1436, 'ticket', 'ticket-reply-to-admin', 'swedish', 'Ticket Reply (Sent to Staff) [swedish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1437, 'estimate', 'estimate-already-send', 'swedish', 'Estimate Already Sent to Customer [swedish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1438, 'contract', 'contract-expiration', 'swedish', 'Contract Expiration Reminder (Sent to Customer Contacts) [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1439, 'tasks', 'task-assigned', 'swedish', 'New Task Assigned (Sent to Staff) [swedish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1440, 'tasks', 'task-added-as-follower', 'swedish', 'Staff Member Added as Follower on Task (Sent to Staff) [swedish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1441, 'tasks', 'task-commented', 'swedish', 'New Comment on Task (Sent to Staff) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1442, 'tasks', 'task-added-attachment', 'swedish', 'New Attachment(s) on Task (Sent to Staff) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1443, 'estimate', 'estimate-declined-to-staff', 'swedish', 'Estimate Declined (Sent to Staff) [swedish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1444, 'estimate', 'estimate-accepted-to-staff', 'swedish', 'Estimate Accepted (Sent to Staff) [swedish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1445, 'proposals', 'proposal-client-accepted', 'swedish', 'Customer Action - Accepted (Sent to Staff) [swedish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1446, 'proposals', 'proposal-send-to-customer', 'swedish', 'Send Proposal to Customer [swedish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1447, 'proposals', 'proposal-client-declined', 'swedish', 'Customer Action - Declined (Sent to Staff) [swedish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1448, 'proposals', 'proposal-client-thank-you', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1449, 'proposals', 'proposal-comment-to-client', 'swedish', 'New Comment Â (Sent to Customer/Lead) [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1450, 'proposals', 'proposal-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1451, 'estimate', 'estimate-thank-you-to-customer', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1452, 'tasks', 'task-deadline-notification', 'swedish', 'Task Deadline Reminder - Sent to Assigned Members [swedish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1453, 'contract', 'send-contract', 'swedish', 'Send Contract to Customer [swedish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1454, 'invoice', 'invoice-payment-recorded-to-staff', 'swedish', 'Invoice Payment Recorded (Sent to Staff) [swedish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1455, 'ticket', 'auto-close-ticket', 'swedish', 'Auto Close Ticket [swedish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1456, 'project', 'new-project-discussion-created-to-staff', 'swedish', 'New Project Discussion (Sent to Project Members) [swedish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1457, 'project', 'new-project-discussion-created-to-customer', 'swedish', 'New Project Discussion (Sent to Customer Contacts) [swedish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1458, 'project', 'new-project-file-uploaded-to-customer', 'swedish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [swedish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1459, 'project', 'new-project-file-uploaded-to-staff', 'swedish', 'New Project File(s) Uploaded (Sent to Project Members) [swedish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1460, 'project', 'new-project-discussion-comment-to-customer', 'swedish', 'New Discussion Comment  (Sent to Customer Contacts) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1461, 'project', 'new-project-discussion-comment-to-staff', 'swedish', 'New Discussion Comment (Sent to Project Members) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1462, 'project', 'staff-added-as-project-member', 'swedish', 'Staff Added as Project Member [swedish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1463, 'estimate', 'estimate-expiry-reminder', 'swedish', 'Estimate Expiration Reminder [swedish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1464, 'proposals', 'proposal-expiry-reminder', 'swedish', 'Proposal Expiration Reminder [swedish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1465, 'staff', 'new-staff-created', 'swedish', 'New Staff Created (Welcome Email) [swedish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1466, 'client', 'contact-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1467, 'client', 'contact-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1468, 'client', 'contact-set-password', 'swedish', 'Set New Password [swedish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1469, 'staff', 'staff-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1470, 'staff', 'staff-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1471, 'project', 'assigned-to-project', 'swedish', 'New Project Created (Sent to Customer Contacts) [swedish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1472, 'tasks', 'task-added-attachment-to-contacts', 'swedish', 'New Attachment(s) on Task (Sent to Customer Contacts) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1473, 'tasks', 'task-commented-to-contacts', 'swedish', 'New Comment on Task (Sent to Customer Contacts) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1474, 'leads', 'new-lead-assigned', 'swedish', 'New Lead Assigned to Staff Member [swedish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1475, 'client', 'client-statement', 'swedish', 'Statement - Account Summary [swedish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1476, 'ticket', 'ticket-assigned-to-admin', 'swedish', 'New Ticket Assigned (Sent to Staff) [swedish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1477, 'client', 'new-client-registered-to-admin', 'swedish', 'New Customer Registration (Sent to admins) [swedish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1478, 'leads', 'new-web-to-lead-form-submitted', 'swedish', 'Web to lead form submitted - Sent to lead [swedish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1479, 'staff', 'two-factor-authentication', 'swedish', 'Two Factor Authentication [swedish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1480, 'project', 'project-finished-to-customer', 'swedish', 'Project Marked as Finished (Sent to Customer Contacts) [swedish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1481, 'credit_note', 'credit-note-send-to-client', 'swedish', 'Send Credit Note To Email [swedish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1482, 'tasks', 'task-status-change-to-staff', 'swedish', 'Task Status Changed (Sent to Staff) [swedish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1483, 'tasks', 'task-status-change-to-contacts', 'swedish', 'Task Status Changed (Sent to Customer Contacts) [swedish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1484, 'staff', 'reminder-email-staff', 'swedish', 'Staff Reminder Email [swedish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1485, 'contract', 'contract-comment-to-client', 'swedish', 'New Comment Â (Sent to Customer Contacts) [swedish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1486, 'contract', 'contract-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1487, 'subscriptions', 'send-subscription', 'swedish', 'Send Subscription to Customer [swedish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1488, 'subscriptions', 'subscription-payment-failed', 'swedish', 'Subscription Payment Failed [swedish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1489, 'subscriptions', 'subscription-canceled', 'swedish', 'Subscription Canceled (Sent to customer primary contact) [swedish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1490, 'subscriptions', 'subscription-payment-succeeded', 'swedish', 'Subscription Payment Succeeded (Sent to customer primary contact) [swedish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1491, 'contract', 'contract-expiration-to-staff', 'swedish', 'Contract Expiration Reminder (Sent to Staff) [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1492, 'gdpr', 'gdpr-removal-request', 'swedish', 'Removal Request From Contact (Sent to administrators) [swedish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1493, 'gdpr', 'gdpr-removal-request-lead', 'swedish', 'Removal Request From Lead (Sent to administrators) [swedish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1494, 'client', 'client-registration-confirmed', 'swedish', 'Customer Registration Confirmed [swedish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1495, 'contract', 'contract-signed-to-staff', 'swedish', 'Contract Signed (Sent to Staff) [swedish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1496, 'subscriptions', 'customer-subscribed-to-staff', 'swedish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [swedish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1497, 'client', 'contact-verification-email', 'swedish', 'Email Verification (Sent to Contact After Registration) [swedish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1498, 'client', 'new-customer-profile-file-uploaded-to-staff', 'swedish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [swedish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1499, 'staff', 'event-notification-to-staff', 'swedish', 'Event Notification (Calendar) [swedish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1500, 'subscriptions', 'subscription-payment-requires-action', 'swedish', 'Credit Card Authorization Required - SCA [swedish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1501, 'client', 'new-client-created', 'spanish', 'New Contact Added/Registered (Welcome Email) [spanish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1502, 'invoice', 'invoice-send-to-client', 'spanish', 'Send Invoice to Customer [spanish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1503, 'ticket', 'new-ticket-opened-admin', 'spanish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1504, 'ticket', 'ticket-reply', 'spanish', 'Ticket Reply (Sent to Customer) [spanish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1505, 'ticket', 'ticket-autoresponse', 'spanish', 'New Ticket Opened - Autoresponse [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1506, 'invoice', 'invoice-payment-recorded', 'spanish', 'Invoice Payment Recorded (Sent to Customer) [spanish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1507, 'invoice', 'invoice-overdue-notice', 'spanish', 'Invoice Overdue Notice [spanish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1508, 'invoice', 'invoice-already-send', 'spanish', 'Invoice Already Sent to Customer [spanish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1509, 'ticket', 'new-ticket-created-staff', 'spanish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [spanish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1510, 'estimate', 'estimate-send-to-client', 'spanish', 'Send Estimate to Customer [spanish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1511, 'ticket', 'ticket-reply-to-admin', 'spanish', 'Ticket Reply (Sent to Staff) [spanish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1512, 'estimate', 'estimate-already-send', 'spanish', 'Estimate Already Sent to Customer [spanish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1513, 'contract', 'contract-expiration', 'spanish', 'Contract Expiration Reminder (Sent to Customer Contacts) [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1514, 'tasks', 'task-assigned', 'spanish', 'New Task Assigned (Sent to Staff) [spanish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1515, 'tasks', 'task-added-as-follower', 'spanish', 'Staff Member Added as Follower on Task (Sent to Staff) [spanish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1516, 'tasks', 'task-commented', 'spanish', 'New Comment on Task (Sent to Staff) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1517, 'tasks', 'task-added-attachment', 'spanish', 'New Attachment(s) on Task (Sent to Staff) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1518, 'estimate', 'estimate-declined-to-staff', 'spanish', 'Estimate Declined (Sent to Staff) [spanish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1519, 'estimate', 'estimate-accepted-to-staff', 'spanish', 'Estimate Accepted (Sent to Staff) [spanish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1520, 'proposals', 'proposal-client-accepted', 'spanish', 'Customer Action - Accepted (Sent to Staff) [spanish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1521, 'proposals', 'proposal-send-to-customer', 'spanish', 'Send Proposal to Customer [spanish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1522, 'proposals', 'proposal-client-declined', 'spanish', 'Customer Action - Declined (Sent to Staff) [spanish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1523, 'proposals', 'proposal-client-thank-you', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1524, 'proposals', 'proposal-comment-to-client', 'spanish', 'New Comment Â (Sent to Customer/Lead) [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1525, 'proposals', 'proposal-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1526, 'estimate', 'estimate-thank-you-to-customer', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1527, 'tasks', 'task-deadline-notification', 'spanish', 'Task Deadline Reminder - Sent to Assigned Members [spanish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1528, 'contract', 'send-contract', 'spanish', 'Send Contract to Customer [spanish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1529, 'invoice', 'invoice-payment-recorded-to-staff', 'spanish', 'Invoice Payment Recorded (Sent to Staff) [spanish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1530, 'ticket', 'auto-close-ticket', 'spanish', 'Auto Close Ticket [spanish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1531, 'project', 'new-project-discussion-created-to-staff', 'spanish', 'New Project Discussion (Sent to Project Members) [spanish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1532, 'project', 'new-project-discussion-created-to-customer', 'spanish', 'New Project Discussion (Sent to Customer Contacts) [spanish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1533, 'project', 'new-project-file-uploaded-to-customer', 'spanish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [spanish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1534, 'project', 'new-project-file-uploaded-to-staff', 'spanish', 'New Project File(s) Uploaded (Sent to Project Members) [spanish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1535, 'project', 'new-project-discussion-comment-to-customer', 'spanish', 'New Discussion Comment  (Sent to Customer Contacts) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1536, 'project', 'new-project-discussion-comment-to-staff', 'spanish', 'New Discussion Comment (Sent to Project Members) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1537, 'project', 'staff-added-as-project-member', 'spanish', 'Staff Added as Project Member [spanish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1538, 'estimate', 'estimate-expiry-reminder', 'spanish', 'Estimate Expiration Reminder [spanish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1539, 'proposals', 'proposal-expiry-reminder', 'spanish', 'Proposal Expiration Reminder [spanish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1540, 'staff', 'new-staff-created', 'spanish', 'New Staff Created (Welcome Email) [spanish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1541, 'client', 'contact-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1542, 'client', 'contact-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1543, 'client', 'contact-set-password', 'spanish', 'Set New Password [spanish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1544, 'staff', 'staff-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1545, 'staff', 'staff-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1546, 'project', 'assigned-to-project', 'spanish', 'New Project Created (Sent to Customer Contacts) [spanish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1547, 'tasks', 'task-added-attachment-to-contacts', 'spanish', 'New Attachment(s) on Task (Sent to Customer Contacts) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1548, 'tasks', 'task-commented-to-contacts', 'spanish', 'New Comment on Task (Sent to Customer Contacts) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1549, 'leads', 'new-lead-assigned', 'spanish', 'New Lead Assigned to Staff Member [spanish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1550, 'client', 'client-statement', 'spanish', 'Statement - Account Summary [spanish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1551, 'ticket', 'ticket-assigned-to-admin', 'spanish', 'New Ticket Assigned (Sent to Staff) [spanish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1552, 'client', 'new-client-registered-to-admin', 'spanish', 'New Customer Registration (Sent to admins) [spanish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1553, 'leads', 'new-web-to-lead-form-submitted', 'spanish', 'Web to lead form submitted - Sent to lead [spanish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1554, 'staff', 'two-factor-authentication', 'spanish', 'Two Factor Authentication [spanish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1555, 'project', 'project-finished-to-customer', 'spanish', 'Project Marked as Finished (Sent to Customer Contacts) [spanish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1556, 'credit_note', 'credit-note-send-to-client', 'spanish', 'Send Credit Note To Email [spanish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1557, 'tasks', 'task-status-change-to-staff', 'spanish', 'Task Status Changed (Sent to Staff) [spanish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1558, 'tasks', 'task-status-change-to-contacts', 'spanish', 'Task Status Changed (Sent to Customer Contacts) [spanish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1559, 'staff', 'reminder-email-staff', 'spanish', 'Staff Reminder Email [spanish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1560, 'contract', 'contract-comment-to-client', 'spanish', 'New Comment Â (Sent to Customer Contacts) [spanish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1561, 'contract', 'contract-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1562, 'subscriptions', 'send-subscription', 'spanish', 'Send Subscription to Customer [spanish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1563, 'subscriptions', 'subscription-payment-failed', 'spanish', 'Subscription Payment Failed [spanish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1564, 'subscriptions', 'subscription-canceled', 'spanish', 'Subscription Canceled (Sent to customer primary contact) [spanish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1565, 'subscriptions', 'subscription-payment-succeeded', 'spanish', 'Subscription Payment Succeeded (Sent to customer primary contact) [spanish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1566, 'contract', 'contract-expiration-to-staff', 'spanish', 'Contract Expiration Reminder (Sent to Staff) [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1567, 'gdpr', 'gdpr-removal-request', 'spanish', 'Removal Request From Contact (Sent to administrators) [spanish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1568, 'gdpr', 'gdpr-removal-request-lead', 'spanish', 'Removal Request From Lead (Sent to administrators) [spanish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1569, 'client', 'client-registration-confirmed', 'spanish', 'Customer Registration Confirmed [spanish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1570, 'contract', 'contract-signed-to-staff', 'spanish', 'Contract Signed (Sent to Staff) [spanish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1571, 'subscriptions', 'customer-subscribed-to-staff', 'spanish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [spanish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1572, 'client', 'contact-verification-email', 'spanish', 'Email Verification (Sent to Contact After Registration) [spanish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1573, 'client', 'new-customer-profile-file-uploaded-to-staff', 'spanish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [spanish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1574, 'staff', 'event-notification-to-staff', 'spanish', 'Event Notification (Calendar) [spanish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1575, 'subscriptions', 'subscription-payment-requires-action', 'spanish', 'Credit Card Authorization Required - SCA [spanish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1576, 'client', 'new-client-created', 'chinese', 'New Contact Added/Registered (Welcome Email) [chinese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1577, 'invoice', 'invoice-send-to-client', 'chinese', 'Send Invoice to Customer [chinese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1578, 'ticket', 'new-ticket-opened-admin', 'chinese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1579, 'ticket', 'ticket-reply', 'chinese', 'Ticket Reply (Sent to Customer) [chinese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1580, 'ticket', 'ticket-autoresponse', 'chinese', 'New Ticket Opened - Autoresponse [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1581, 'invoice', 'invoice-payment-recorded', 'chinese', 'Invoice Payment Recorded (Sent to Customer) [chinese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1582, 'invoice', 'invoice-overdue-notice', 'chinese', 'Invoice Overdue Notice [chinese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1583, 'invoice', 'invoice-already-send', 'chinese', 'Invoice Already Sent to Customer [chinese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1584, 'ticket', 'new-ticket-created-staff', 'chinese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [chinese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1585, 'estimate', 'estimate-send-to-client', 'chinese', 'Send Estimate to Customer [chinese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1586, 'ticket', 'ticket-reply-to-admin', 'chinese', 'Ticket Reply (Sent to Staff) [chinese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1587, 'estimate', 'estimate-already-send', 'chinese', 'Estimate Already Sent to Customer [chinese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1588, 'contract', 'contract-expiration', 'chinese', 'Contract Expiration Reminder (Sent to Customer Contacts) [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1589, 'tasks', 'task-assigned', 'chinese', 'New Task Assigned (Sent to Staff) [chinese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1590, 'tasks', 'task-added-as-follower', 'chinese', 'Staff Member Added as Follower on Task (Sent to Staff) [chinese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1591, 'tasks', 'task-commented', 'chinese', 'New Comment on Task (Sent to Staff) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1592, 'tasks', 'task-added-attachment', 'chinese', 'New Attachment(s) on Task (Sent to Staff) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1593, 'estimate', 'estimate-declined-to-staff', 'chinese', 'Estimate Declined (Sent to Staff) [chinese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1594, 'estimate', 'estimate-accepted-to-staff', 'chinese', 'Estimate Accepted (Sent to Staff) [chinese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1595, 'proposals', 'proposal-client-accepted', 'chinese', 'Customer Action - Accepted (Sent to Staff) [chinese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1596, 'proposals', 'proposal-send-to-customer', 'chinese', 'Send Proposal to Customer [chinese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1597, 'proposals', 'proposal-client-declined', 'chinese', 'Customer Action - Declined (Sent to Staff) [chinese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1598, 'proposals', 'proposal-client-thank-you', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1599, 'proposals', 'proposal-comment-to-client', 'chinese', 'New Comment Â (Sent to Customer/Lead) [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1600, 'proposals', 'proposal-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1601, 'estimate', 'estimate-thank-you-to-customer', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1602, 'tasks', 'task-deadline-notification', 'chinese', 'Task Deadline Reminder - Sent to Assigned Members [chinese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1603, 'contract', 'send-contract', 'chinese', 'Send Contract to Customer [chinese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1604, 'invoice', 'invoice-payment-recorded-to-staff', 'chinese', 'Invoice Payment Recorded (Sent to Staff) [chinese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1605, 'ticket', 'auto-close-ticket', 'chinese', 'Auto Close Ticket [chinese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1606, 'project', 'new-project-discussion-created-to-staff', 'chinese', 'New Project Discussion (Sent to Project Members) [chinese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1607, 'project', 'new-project-discussion-created-to-customer', 'chinese', 'New Project Discussion (Sent to Customer Contacts) [chinese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1608, 'project', 'new-project-file-uploaded-to-customer', 'chinese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [chinese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1609, 'project', 'new-project-file-uploaded-to-staff', 'chinese', 'New Project File(s) Uploaded (Sent to Project Members) [chinese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1610, 'project', 'new-project-discussion-comment-to-customer', 'chinese', 'New Discussion Comment  (Sent to Customer Contacts) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1611, 'project', 'new-project-discussion-comment-to-staff', 'chinese', 'New Discussion Comment (Sent to Project Members) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1612, 'project', 'staff-added-as-project-member', 'chinese', 'Staff Added as Project Member [chinese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1613, 'estimate', 'estimate-expiry-reminder', 'chinese', 'Estimate Expiration Reminder [chinese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1614, 'proposals', 'proposal-expiry-reminder', 'chinese', 'Proposal Expiration Reminder [chinese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1615, 'staff', 'new-staff-created', 'chinese', 'New Staff Created (Welcome Email) [chinese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1616, 'client', 'contact-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1617, 'client', 'contact-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1618, 'client', 'contact-set-password', 'chinese', 'Set New Password [chinese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1619, 'staff', 'staff-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1620, 'staff', 'staff-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1621, 'project', 'assigned-to-project', 'chinese', 'New Project Created (Sent to Customer Contacts) [chinese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1622, 'tasks', 'task-added-attachment-to-contacts', 'chinese', 'New Attachment(s) on Task (Sent to Customer Contacts) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1623, 'tasks', 'task-commented-to-contacts', 'chinese', 'New Comment on Task (Sent to Customer Contacts) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1624, 'leads', 'new-lead-assigned', 'chinese', 'New Lead Assigned to Staff Member [chinese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1625, 'client', 'client-statement', 'chinese', 'Statement - Account Summary [chinese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1626, 'ticket', 'ticket-assigned-to-admin', 'chinese', 'New Ticket Assigned (Sent to Staff) [chinese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1627, 'client', 'new-client-registered-to-admin', 'chinese', 'New Customer Registration (Sent to admins) [chinese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1628, 'leads', 'new-web-to-lead-form-submitted', 'chinese', 'Web to lead form submitted - Sent to lead [chinese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1629, 'staff', 'two-factor-authentication', 'chinese', 'Two Factor Authentication [chinese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1630, 'project', 'project-finished-to-customer', 'chinese', 'Project Marked as Finished (Sent to Customer Contacts) [chinese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1631, 'credit_note', 'credit-note-send-to-client', 'chinese', 'Send Credit Note To Email [chinese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1632, 'tasks', 'task-status-change-to-staff', 'chinese', 'Task Status Changed (Sent to Staff) [chinese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1633, 'tasks', 'task-status-change-to-contacts', 'chinese', 'Task Status Changed (Sent to Customer Contacts) [chinese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1634, 'staff', 'reminder-email-staff', 'chinese', 'Staff Reminder Email [chinese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1635, 'contract', 'contract-comment-to-client', 'chinese', 'New Comment Â (Sent to Customer Contacts) [chinese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1636, 'contract', 'contract-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1637, 'subscriptions', 'send-subscription', 'chinese', 'Send Subscription to Customer [chinese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1638, 'subscriptions', 'subscription-payment-failed', 'chinese', 'Subscription Payment Failed [chinese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1639, 'subscriptions', 'subscription-canceled', 'chinese', 'Subscription Canceled (Sent to customer primary contact) [chinese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1640, 'subscriptions', 'subscription-payment-succeeded', 'chinese', 'Subscription Payment Succeeded (Sent to customer primary contact) [chinese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1641, 'contract', 'contract-expiration-to-staff', 'chinese', 'Contract Expiration Reminder (Sent to Staff) [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1642, 'gdpr', 'gdpr-removal-request', 'chinese', 'Removal Request From Contact (Sent to administrators) [chinese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1643, 'gdpr', 'gdpr-removal-request-lead', 'chinese', 'Removal Request From Lead (Sent to administrators) [chinese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1644, 'client', 'client-registration-confirmed', 'chinese', 'Customer Registration Confirmed [chinese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1645, 'contract', 'contract-signed-to-staff', 'chinese', 'Contract Signed (Sent to Staff) [chinese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1646, 'subscriptions', 'customer-subscribed-to-staff', 'chinese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [chinese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1647, 'client', 'contact-verification-email', 'chinese', 'Email Verification (Sent to Contact After Registration) [chinese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1648, 'client', 'new-customer-profile-file-uploaded-to-staff', 'chinese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [chinese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1649, 'staff', 'event-notification-to-staff', 'chinese', 'Event Notification (Calendar) [chinese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1650, 'subscriptions', 'subscription-payment-requires-action', 'chinese', 'Credit Card Authorization Required - SCA [chinese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1651, 'client', 'new-client-created', 'persian', 'New Contact Added/Registered (Welcome Email) [persian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1652, 'invoice', 'invoice-send-to-client', 'persian', 'Send Invoice to Customer [persian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1653, 'ticket', 'new-ticket-opened-admin', 'persian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1654, 'ticket', 'ticket-reply', 'persian', 'Ticket Reply (Sent to Customer) [persian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1655, 'ticket', 'ticket-autoresponse', 'persian', 'New Ticket Opened - Autoresponse [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1656, 'invoice', 'invoice-payment-recorded', 'persian', 'Invoice Payment Recorded (Sent to Customer) [persian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1657, 'invoice', 'invoice-overdue-notice', 'persian', 'Invoice Overdue Notice [persian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1658, 'invoice', 'invoice-already-send', 'persian', 'Invoice Already Sent to Customer [persian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1659, 'ticket', 'new-ticket-created-staff', 'persian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [persian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1660, 'estimate', 'estimate-send-to-client', 'persian', 'Send Estimate to Customer [persian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1661, 'ticket', 'ticket-reply-to-admin', 'persian', 'Ticket Reply (Sent to Staff) [persian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1662, 'estimate', 'estimate-already-send', 'persian', 'Estimate Already Sent to Customer [persian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1663, 'contract', 'contract-expiration', 'persian', 'Contract Expiration Reminder (Sent to Customer Contacts) [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1664, 'tasks', 'task-assigned', 'persian', 'New Task Assigned (Sent to Staff) [persian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1665, 'tasks', 'task-added-as-follower', 'persian', 'Staff Member Added as Follower on Task (Sent to Staff) [persian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1666, 'tasks', 'task-commented', 'persian', 'New Comment on Task (Sent to Staff) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1667, 'tasks', 'task-added-attachment', 'persian', 'New Attachment(s) on Task (Sent to Staff) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1668, 'estimate', 'estimate-declined-to-staff', 'persian', 'Estimate Declined (Sent to Staff) [persian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1669, 'estimate', 'estimate-accepted-to-staff', 'persian', 'Estimate Accepted (Sent to Staff) [persian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1670, 'proposals', 'proposal-client-accepted', 'persian', 'Customer Action - Accepted (Sent to Staff) [persian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1671, 'proposals', 'proposal-send-to-customer', 'persian', 'Send Proposal to Customer [persian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1672, 'proposals', 'proposal-client-declined', 'persian', 'Customer Action - Declined (Sent to Staff) [persian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1673, 'proposals', 'proposal-client-thank-you', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1674, 'proposals', 'proposal-comment-to-client', 'persian', 'New Comment Â (Sent to Customer/Lead) [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1675, 'proposals', 'proposal-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1676, 'estimate', 'estimate-thank-you-to-customer', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1677, 'tasks', 'task-deadline-notification', 'persian', 'Task Deadline Reminder - Sent to Assigned Members [persian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1678, 'contract', 'send-contract', 'persian', 'Send Contract to Customer [persian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1679, 'invoice', 'invoice-payment-recorded-to-staff', 'persian', 'Invoice Payment Recorded (Sent to Staff) [persian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1680, 'ticket', 'auto-close-ticket', 'persian', 'Auto Close Ticket [persian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1681, 'project', 'new-project-discussion-created-to-staff', 'persian', 'New Project Discussion (Sent to Project Members) [persian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1682, 'project', 'new-project-discussion-created-to-customer', 'persian', 'New Project Discussion (Sent to Customer Contacts) [persian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1683, 'project', 'new-project-file-uploaded-to-customer', 'persian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [persian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1684, 'project', 'new-project-file-uploaded-to-staff', 'persian', 'New Project File(s) Uploaded (Sent to Project Members) [persian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1685, 'project', 'new-project-discussion-comment-to-customer', 'persian', 'New Discussion Comment  (Sent to Customer Contacts) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1686, 'project', 'new-project-discussion-comment-to-staff', 'persian', 'New Discussion Comment (Sent to Project Members) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1687, 'project', 'staff-added-as-project-member', 'persian', 'Staff Added as Project Member [persian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1688, 'estimate', 'estimate-expiry-reminder', 'persian', 'Estimate Expiration Reminder [persian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1689, 'proposals', 'proposal-expiry-reminder', 'persian', 'Proposal Expiration Reminder [persian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1690, 'staff', 'new-staff-created', 'persian', 'New Staff Created (Welcome Email) [persian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1691, 'client', 'contact-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1692, 'client', 'contact-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1693, 'client', 'contact-set-password', 'persian', 'Set New Password [persian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1694, 'staff', 'staff-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1695, 'staff', 'staff-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1696, 'project', 'assigned-to-project', 'persian', 'New Project Created (Sent to Customer Contacts) [persian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1697, 'tasks', 'task-added-attachment-to-contacts', 'persian', 'New Attachment(s) on Task (Sent to Customer Contacts) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1698, 'tasks', 'task-commented-to-contacts', 'persian', 'New Comment on Task (Sent to Customer Contacts) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1699, 'leads', 'new-lead-assigned', 'persian', 'New Lead Assigned to Staff Member [persian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1700, 'client', 'client-statement', 'persian', 'Statement - Account Summary [persian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1701, 'ticket', 'ticket-assigned-to-admin', 'persian', 'New Ticket Assigned (Sent to Staff) [persian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1702, 'client', 'new-client-registered-to-admin', 'persian', 'New Customer Registration (Sent to admins) [persian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1703, 'leads', 'new-web-to-lead-form-submitted', 'persian', 'Web to lead form submitted - Sent to lead [persian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1704, 'staff', 'two-factor-authentication', 'persian', 'Two Factor Authentication [persian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1705, 'project', 'project-finished-to-customer', 'persian', 'Project Marked as Finished (Sent to Customer Contacts) [persian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1706, 'credit_note', 'credit-note-send-to-client', 'persian', 'Send Credit Note To Email [persian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1707, 'tasks', 'task-status-change-to-staff', 'persian', 'Task Status Changed (Sent to Staff) [persian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1708, 'tasks', 'task-status-change-to-contacts', 'persian', 'Task Status Changed (Sent to Customer Contacts) [persian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1709, 'staff', 'reminder-email-staff', 'persian', 'Staff Reminder Email [persian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1710, 'contract', 'contract-comment-to-client', 'persian', 'New Comment Â (Sent to Customer Contacts) [persian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1711, 'contract', 'contract-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1712, 'subscriptions', 'send-subscription', 'persian', 'Send Subscription to Customer [persian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1713, 'subscriptions', 'subscription-payment-failed', 'persian', 'Subscription Payment Failed [persian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1714, 'subscriptions', 'subscription-canceled', 'persian', 'Subscription Canceled (Sent to customer primary contact) [persian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1715, 'subscriptions', 'subscription-payment-succeeded', 'persian', 'Subscription Payment Succeeded (Sent to customer primary contact) [persian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1716, 'contract', 'contract-expiration-to-staff', 'persian', 'Contract Expiration Reminder (Sent to Staff) [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1717, 'gdpr', 'gdpr-removal-request', 'persian', 'Removal Request From Contact (Sent to administrators) [persian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1718, 'gdpr', 'gdpr-removal-request-lead', 'persian', 'Removal Request From Lead (Sent to administrators) [persian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1719, 'client', 'client-registration-confirmed', 'persian', 'Customer Registration Confirmed [persian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1720, 'contract', 'contract-signed-to-staff', 'persian', 'Contract Signed (Sent to Staff) [persian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1721, 'subscriptions', 'customer-subscribed-to-staff', 'persian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [persian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1722, 'client', 'contact-verification-email', 'persian', 'Email Verification (Sent to Contact After Registration) [persian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1723, 'client', 'new-customer-profile-file-uploaded-to-staff', 'persian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [persian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1724, 'staff', 'event-notification-to-staff', 'persian', 'Event Notification (Calendar) [persian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1725, 'subscriptions', 'subscription-payment-requires-action', 'persian', 'Credit Card Authorization Required - SCA [persian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1726, 'client', 'new-client-created', 'ukrainian', 'New Contact Added/Registered (Welcome Email) [ukrainian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1727, 'invoice', 'invoice-send-to-client', 'ukrainian', 'Send Invoice to Customer [ukrainian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1728, 'ticket', 'new-ticket-opened-admin', 'ukrainian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [ukrainian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1729, 'ticket', 'ticket-reply', 'ukrainian', 'Ticket Reply (Sent to Customer) [ukrainian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1730, 'ticket', 'ticket-autoresponse', 'ukrainian', 'New Ticket Opened - Autoresponse [ukrainian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1731, 'invoice', 'invoice-payment-recorded', 'ukrainian', 'Invoice Payment Recorded (Sent to Customer) [ukrainian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1732, 'invoice', 'invoice-overdue-notice', 'ukrainian', 'Invoice Overdue Notice [ukrainian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1733, 'invoice', 'invoice-already-send', 'ukrainian', 'Invoice Already Sent to Customer [ukrainian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1734, 'ticket', 'new-ticket-created-staff', 'ukrainian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [ukrainian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1735, 'estimate', 'estimate-send-to-client', 'ukrainian', 'Send Estimate to Customer [ukrainian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1736, 'ticket', 'ticket-reply-to-admin', 'ukrainian', 'Ticket Reply (Sent to Staff) [ukrainian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1737, 'estimate', 'estimate-already-send', 'ukrainian', 'Estimate Already Sent to Customer [ukrainian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1738, 'contract', 'contract-expiration', 'ukrainian', 'Contract Expiration Reminder (Sent to Customer Contacts) [ukrainian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1739, 'tasks', 'task-assigned', 'ukrainian', 'New Task Assigned (Sent to Staff) [ukrainian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1740, 'tasks', 'task-added-as-follower', 'ukrainian', 'Staff Member Added as Follower on Task (Sent to Staff) [ukrainian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1741, 'tasks', 'task-commented', 'ukrainian', 'New Comment on Task (Sent to Staff) [ukrainian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1742, 'tasks', 'task-added-attachment', 'ukrainian', 'New Attachment(s) on Task (Sent to Staff) [ukrainian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1743, 'estimate', 'estimate-declined-to-staff', 'ukrainian', 'Estimate Declined (Sent to Staff) [ukrainian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1744, 'estimate', 'estimate-accepted-to-staff', 'ukrainian', 'Estimate Accepted (Sent to Staff) [ukrainian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1745, 'proposals', 'proposal-client-accepted', 'ukrainian', 'Customer Action - Accepted (Sent to Staff) [ukrainian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1746, 'proposals', 'proposal-send-to-customer', 'ukrainian', 'Send Proposal to Customer [ukrainian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1747, 'proposals', 'proposal-client-declined', 'ukrainian', 'Customer Action - Declined (Sent to Staff) [ukrainian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1748, 'proposals', 'proposal-client-thank-you', 'ukrainian', 'Thank You Email (Sent to Customer After Accept) [ukrainian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1749, 'proposals', 'proposal-comment-to-client', 'ukrainian', 'New Comment Â (Sent to Customer/Lead) [ukrainian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1750, 'proposals', 'proposal-comment-to-admin', 'ukrainian', 'New Comment (Sent to Staff)  [ukrainian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1751, 'estimate', 'estimate-thank-you-to-customer', 'ukrainian', 'Thank You Email (Sent to Customer After Accept) [ukrainian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1752, 'tasks', 'task-deadline-notification', 'ukrainian', 'Task Deadline Reminder - Sent to Assigned Members [ukrainian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1753, 'contract', 'send-contract', 'ukrainian', 'Send Contract to Customer [ukrainian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1754, 'invoice', 'invoice-payment-recorded-to-staff', 'ukrainian', 'Invoice Payment Recorded (Sent to Staff) [ukrainian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1755, 'ticket', 'auto-close-ticket', 'ukrainian', 'Auto Close Ticket [ukrainian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1756, 'project', 'new-project-discussion-created-to-staff', 'ukrainian', 'New Project Discussion (Sent to Project Members) [ukrainian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1757, 'project', 'new-project-discussion-created-to-customer', 'ukrainian', 'New Project Discussion (Sent to Customer Contacts) [ukrainian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1758, 'project', 'new-project-file-uploaded-to-customer', 'ukrainian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [ukrainian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1759, 'project', 'new-project-file-uploaded-to-staff', 'ukrainian', 'New Project File(s) Uploaded (Sent to Project Members) [ukrainian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1760, 'project', 'new-project-discussion-comment-to-customer', 'ukrainian', 'New Discussion Comment  (Sent to Customer Contacts) [ukrainian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1761, 'project', 'new-project-discussion-comment-to-staff', 'ukrainian', 'New Discussion Comment (Sent to Project Members) [ukrainian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1762, 'project', 'staff-added-as-project-member', 'ukrainian', 'Staff Added as Project Member [ukrainian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1763, 'estimate', 'estimate-expiry-reminder', 'ukrainian', 'Estimate Expiration Reminder [ukrainian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1764, 'proposals', 'proposal-expiry-reminder', 'ukrainian', 'Proposal Expiration Reminder [ukrainian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1765, 'staff', 'new-staff-created', 'ukrainian', 'New Staff Created (Welcome Email) [ukrainian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1766, 'client', 'contact-forgot-password', 'ukrainian', 'Forgot Password [ukrainian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1767, 'client', 'contact-password-reseted', 'ukrainian', 'Password Reset - Confirmation [ukrainian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1768, 'client', 'contact-set-password', 'ukrainian', 'Set New Password [ukrainian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1769, 'staff', 'staff-forgot-password', 'ukrainian', 'Forgot Password [ukrainian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1770, 'staff', 'staff-password-reseted', 'ukrainian', 'Password Reset - Confirmation [ukrainian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1771, 'project', 'assigned-to-project', 'ukrainian', 'New Project Created (Sent to Customer Contacts) [ukrainian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1772, 'tasks', 'task-added-attachment-to-contacts', 'ukrainian', 'New Attachment(s) on Task (Sent to Customer Contacts) [ukrainian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1773, 'tasks', 'task-commented-to-contacts', 'ukrainian', 'New Comment on Task (Sent to Customer Contacts) [ukrainian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1774, 'leads', 'new-lead-assigned', 'ukrainian', 'New Lead Assigned to Staff Member [ukrainian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1775, 'client', 'client-statement', 'ukrainian', 'Statement - Account Summary [ukrainian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1776, 'ticket', 'ticket-assigned-to-admin', 'ukrainian', 'New Ticket Assigned (Sent to Staff) [ukrainian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1777, 'client', 'new-client-registered-to-admin', 'ukrainian', 'New Customer Registration (Sent to admins) [ukrainian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1778, 'leads', 'new-web-to-lead-form-submitted', 'ukrainian', 'Web to lead form submitted - Sent to lead [ukrainian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1779, 'staff', 'two-factor-authentication', 'ukrainian', 'Two Factor Authentication [ukrainian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1780, 'project', 'project-finished-to-customer', 'ukrainian', 'Project Marked as Finished (Sent to Customer Contacts) [ukrainian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1781, 'credit_note', 'credit-note-send-to-client', 'ukrainian', 'Send Credit Note To Email [ukrainian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1782, 'tasks', 'task-status-change-to-staff', 'ukrainian', 'Task Status Changed (Sent to Staff) [ukrainian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1783, 'tasks', 'task-status-change-to-contacts', 'ukrainian', 'Task Status Changed (Sent to Customer Contacts) [ukrainian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1784, 'staff', 'reminder-email-staff', 'ukrainian', 'Staff Reminder Email [ukrainian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1785, 'contract', 'contract-comment-to-client', 'ukrainian', 'New Comment Â (Sent to Customer Contacts) [ukrainian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1786, 'contract', 'contract-comment-to-admin', 'ukrainian', 'New Comment (Sent to Staff)  [ukrainian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1787, 'subscriptions', 'send-subscription', 'ukrainian', 'Send Subscription to Customer [ukrainian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1788, 'subscriptions', 'subscription-payment-failed', 'ukrainian', 'Subscription Payment Failed [ukrainian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1789, 'subscriptions', 'subscription-canceled', 'ukrainian', 'Subscription Canceled (Sent to customer primary contact) [ukrainian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1790, 'subscriptions', 'subscription-payment-succeeded', 'ukrainian', 'Subscription Payment Succeeded (Sent to customer primary contact) [ukrainian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1791, 'contract', 'contract-expiration-to-staff', 'ukrainian', 'Contract Expiration Reminder (Sent to Staff) [ukrainian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1792, 'gdpr', 'gdpr-removal-request', 'ukrainian', 'Removal Request From Contact (Sent to administrators) [ukrainian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1793, 'gdpr', 'gdpr-removal-request-lead', 'ukrainian', 'Removal Request From Lead (Sent to administrators) [ukrainian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1794, 'client', 'client-registration-confirmed', 'ukrainian', 'Customer Registration Confirmed [ukrainian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1795, 'contract', 'contract-signed-to-staff', 'ukrainian', 'Contract Signed (Sent to Staff) [ukrainian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1796, 'subscriptions', 'customer-subscribed-to-staff', 'ukrainian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [ukrainian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1797, 'client', 'contact-verification-email', 'ukrainian', 'Email Verification (Sent to Contact After Registration) [ukrainian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1798, 'client', 'new-customer-profile-file-uploaded-to-staff', 'ukrainian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [ukrainian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1799, 'staff', 'event-notification-to-staff', 'ukrainian', 'Event Notification (Calendar) [ukrainian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1800, 'subscriptions', 'subscription-payment-requires-action', 'ukrainian', 'Credit Card Authorization Required - SCA [ukrainian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1801, 'teampassword', 'teampassword-share-link-to-contact', 'english', 'Teampassword share the link (Sent to contact)', 'Share the link', '<span style=\\\"font-size: 12pt;\\\"> Hello {contact_name}. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> We would like to share with you a link of {type} information with the name {obj_name} </span><br /><br /><span style=\\\"font-size: 12pt;\\\"><br />Please click on the link to view information: {share_link}\r\n  </span><br /><br />', '', NULL, 0, 1, 0),
(1802, 'teampassword', 'teampassword-share-link-to-contact', 'bulgarian', 'Teampassword share the link (Sent to contact) [bulgarian]', 'Share the link', '', '', NULL, 0, 1, 0),
(1803, 'teampassword', 'teampassword-share-link-to-contact', 'catalan', 'Teampassword share the link (Sent to contact) [catalan]', 'Share the link', '', '', NULL, 0, 1, 0),
(1804, 'teampassword', 'teampassword-share-link-to-contact', 'chinese', 'Teampassword share the link (Sent to contact) [chinese]', 'Share the link', '', '', NULL, 0, 1, 0),
(1805, 'teampassword', 'teampassword-share-link-to-contact', 'czech', 'Teampassword share the link (Sent to contact) [czech]', 'Share the link', '', '', NULL, 0, 1, 0),
(1806, 'teampassword', 'teampassword-share-link-to-contact', 'dutch', 'Teampassword share the link (Sent to contact) [dutch]', 'Share the link', '', '', NULL, 0, 1, 0),
(1807, 'teampassword', 'teampassword-share-link-to-contact', 'french', 'Teampassword share the link (Sent to contact) [french]', 'Share the link', '', '', NULL, 0, 1, 0),
(1808, 'teampassword', 'teampassword-share-link-to-contact', 'german', 'Teampassword share the link (Sent to contact) [german]', 'Share the link', '', '', NULL, 0, 1, 0),
(1809, 'teampassword', 'teampassword-share-link-to-contact', 'greek', 'Teampassword share the link (Sent to contact) [greek]', 'Share the link', '', '', NULL, 0, 1, 0),
(1810, 'teampassword', 'teampassword-share-link-to-contact', 'indonesia', 'Teampassword share the link (Sent to contact) [indonesia]', 'Share the link', '', '', NULL, 0, 1, 0),
(1811, 'teampassword', 'teampassword-share-link-to-contact', 'italian', 'Teampassword share the link (Sent to contact) [italian]', 'Share the link', '', '', NULL, 0, 1, 0),
(1812, 'teampassword', 'teampassword-share-link-to-contact', 'japanese', 'Teampassword share the link (Sent to contact) [japanese]', 'Share the link', '', '', NULL, 0, 1, 0),
(1813, 'teampassword', 'teampassword-share-link-to-contact', 'persian', 'Teampassword share the link (Sent to contact) [persian]', 'Share the link', '', '', NULL, 0, 1, 0),
(1814, 'teampassword', 'teampassword-share-link-to-contact', 'polish', 'Teampassword share the link (Sent to contact) [polish]', 'Share the link', '', '', NULL, 0, 1, 0),
(1815, 'teampassword', 'teampassword-share-link-to-contact', 'portuguese', 'Teampassword share the link (Sent to contact) [portuguese]', 'Share the link', '', '', NULL, 0, 1, 0),
(1816, 'teampassword', 'teampassword-share-link-to-contact', 'portuguese_br', 'Teampassword share the link (Sent to contact) [portuguese_br]', 'Share the link', '', '', NULL, 0, 1, 0),
(1817, 'teampassword', 'teampassword-share-link-to-contact', 'romanian', 'Teampassword share the link (Sent to contact) [romanian]', 'Share the link', '', '', NULL, 0, 1, 0),
(1818, 'teampassword', 'teampassword-share-link-to-contact', 'russian', 'Teampassword share the link (Sent to contact) [russian]', 'Share the link', '', '', NULL, 0, 1, 0),
(1819, 'teampassword', 'teampassword-share-link-to-contact', 'slovak', 'Teampassword share the link (Sent to contact) [slovak]', 'Share the link', '', '', NULL, 0, 1, 0),
(1820, 'teampassword', 'teampassword-share-link-to-contact', 'spanish', 'Teampassword share the link (Sent to contact) [spanish]', 'Share the link', '', '', NULL, 0, 1, 0),
(1821, 'teampassword', 'teampassword-share-link-to-contact', 'swedish', 'Teampassword share the link (Sent to contact) [swedish]', 'Share the link', '', '', NULL, 0, 1, 0),
(1822, 'teampassword', 'teampassword-share-link-to-contact', 'turkish', 'Teampassword share the link (Sent to contact) [turkish]', 'Share the link', '', '', NULL, 0, 1, 0),
(1823, 'teampassword', 'teampassword-share-link-to-contact', 'vietnamese', 'Teampassword share the link (Sent to contact) [vietnamese]', 'Share the link', '', '', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimates`
--

DROP TABLE IF EXISTS `tblestimates`;
CREATE TABLE IF NOT EXISTS `tblestimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `opportunity` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `shipping` int(11) DEFAULT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `clientnote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `pipeline_order` int(11) NOT NULL DEFAULT 0,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `shipping_active` int(11) NOT NULL DEFAULT 0,
  `payment_terms_active` int(11) NOT NULL DEFAULT 0,
  `term_and_conditions_active` int(11) NOT NULL DEFAULT 0,
  `labour_terms_active` int(11) NOT NULL DEFAULT 0,
  `shipping_terms` longtext NOT NULL,
  `payment_terms` longtext NOT NULL,
  `labour_terms` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `currency` (`currency`),
  KEY `project_id` (`project_id`),
  KEY `sale_agent` (`sale_agent`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblestimates`
--

INSERT INTO `tblestimates` (`id`, `sent`, `datesend`, `clientid`, `opportunity`, `deleted_customer_name`, `project_id`, `number`, `prefix`, `number_format`, `hash`, `datecreated`, `date`, `expirydate`, `currency`, `subtotal`, `total_tax`, `total`, `shipping`, `adjustment`, `addedfrom`, `status`, `clientnote`, `adminnote`, `discount_percent`, `discount_total`, `discount_type`, `invoiceid`, `invoiced_date`, `terms`, `reference_no`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_estimate`, `show_quantity_as`, `pipeline_order`, `is_expiry_notified`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `signature`, `shipping_active`, `payment_terms_active`, `term_and_conditions_active`, `labour_terms_active`, `shipping_terms`, `payment_terms`, `labour_terms`) VALUES
(10, 0, NULL, 3, 0, NULL, 0, 153, 'AIR-EST-', 3, 'd39811dabb81310312e36caee74f1d04', '2020-10-14 06:18:40', '2020-10-14', '2020-10-28', 3, '126.00', '2.99', '1126.00', 1000, '0.00', 4, 4, '', '', '0.00', '0.00', '', 54, '2020-10-14 06:24:30', '', '', 0, '35 Ripley Ave.<br />\r\nSuite 1', 'Toronto', 'ON', 'M6S3P2', 40, '35 Ripley Ave.<br />\r\nSuite 1', 'Toronto', 'ON', 'M6S3P2', 40, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

DROP TABLE IF EXISTS `tblevents`;
CREATE TABLE IF NOT EXISTS `tblevents` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `description` text DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT 0,
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_before` int(11) NOT NULL DEFAULT 0,
  `reminder_before_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`eventid`, `title`, `description`, `userid`, `start`, `end`, `public`, `color`, `isstartnotified`, `reminder_before`, `reminder_before_type`) VALUES
(1, 'Meeting: Reverse Margin', '', 1, '2020-04-23 10:00:00', '2020-04-23 12:30:00', 1, '#28B8DA', 1, 30, 'minutes');

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

DROP TABLE IF EXISTS `tblexpenses`;
CREATE TABLE IF NOT EXISTS `tblexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT 0,
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `expense_name` varchar(191) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `opportunity` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `billable` int(11) DEFAULT 0,
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `custom_recurring` int(11) NOT NULL DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`),
  KEY `category` (`category`),
  KEY `currency` (`currency`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblexpenses`
--

INSERT INTO `tblexpenses` (`id`, `category`, `currency`, `amount`, `tax`, `tax2`, `reference_no`, `note`, `expense_name`, `clientid`, `opportunity`, `project_id`, `billable`, `invoiceid`, `paymentmode`, `date`, `recurring_type`, `repeat_every`, `recurring`, `cycles`, `total_cycles`, `custom_recurring`, `last_recurring_date`, `create_invoice_billable`, `send_invoice_to_customer`, `recurring_from`, `dateadded`, `addedfrom`, `vendor`) VALUES
(1, 1, 3, '200.00', 1, 0, '3493', 'Integration and Automation with seminar and Zoom. Using Woo Commerce, Wordpress and 3rd party integration', 'Woo Commerce Integration with Seminars', 1, 0, 4, 0, NULL, '2', '2020-06-29', NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-06-29 21:46:40', 1, NULL),
(2, 2, 3, '341.30', 0, 0, '', 'Social Media advertising on behalf of customer to promote Webinar project', 'Ads Budget used on behalf of customer', 1, 0, 6, 1, NULL, 'stripe', '2020-07-28', NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-07-28 14:51:55', 2, NULL),
(4, 4, 3, '56.21', 0, 0, '', 'Planning session ', 'Cactus Club', 0, 0, 0, 0, NULL, '', '2020-07-31', NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-07-31 17:10:19', 1, NULL),
(5, 1, 3, '1266.77', 0, 0, 'T311589023', 'UPwork', 'Bitsclan Solutions Pvt Ltd', 1, 0, 3, 0, NULL, 'stripe', '2020-07-04', NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-08-10 22:50:29', 1, NULL),
(6, 5, 3, '5.00', 0, 0, 'IVBF38805460', 'Buyer Fee for Envato', 'Appointly - Perfex CRM Appointments - Buyer Fee', 1, 0, 3, 0, NULL, '', '2020-07-23', NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-08-29 20:53:13', 1, NULL),
(7, 1, 3, '34.00', 0, 0, 'IVIP39060283', '25459077 - Appointly - Perfex CRM Appointments - Regular License<br />\r\n25459077 - Appointly - Perfex CRM Appointments - 6 months included support<br />\r\n<br />\r\nUSD', 'Appointly - Perfex CRM Appointments - Regular License + 6 Mo. Support', 1, 0, 3, 0, NULL, '', '2020-07-23', NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-08-29 20:55:51', 1, NULL),
(8, 1, 3, '24.00', 0, 0, 'IVIP39091614', '27643032 - Call Log module for Perfex CRM - Regular License<br />\r\n27643032 - Call Log module for Perfex CRM - 6 months included support', 'Call Log module for Perfex CRM - Regular License', 1, 0, 3, 0, NULL, '', '2020-08-29', NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-08-29 21:01:29', 1, NULL),
(9, 1, 3, '74.25', 0, 0, 'IVIP39060281', '14013737 - Perfex - Powerful Open Source CRM - Regular License<br />\r\n14013737 - Perfex - Powerful Open Source CRM - 6 months included support<br />\r\n14013737 - Perfex - Powerful Open Source CRM - 6 months extended support', 'Perfex - Powerful Open Source CRM - Regular License + Support', 1, 0, 3, 0, NULL, '', '2020-07-23', NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-08-29 21:06:50', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses_categories`
--

DROP TABLE IF EXISTS `tblexpenses_categories`;
CREATE TABLE IF NOT EXISTS `tblexpenses_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblexpenses_categories`
--

INSERT INTO `tblexpenses_categories` (`id`, `name`, `description`) VALUES
(1, 'Contractors', ''),
(2, 'Customer\'s Advertising Budget', ''),
(3, 'Customer\'s Advertising Budget', ''),
(4, 'Meals & Entertainment', ''),
(5, 'Envato Assets', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

DROP TABLE IF EXISTS `tblfiles`;
CREATE TABLE IF NOT EXISTS `tblfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text DEFAULT NULL,
  `thumbnail_link` text DEFAULT NULL COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `task_comment_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblfiles`
--

INSERT INTO `tblfiles` (`id`, `rel_id`, `rel_type`, `file_name`, `filetype`, `visible_to_customer`, `attachment_key`, `external`, `external_link`, `thumbnail_link`, `staffid`, `contact_id`, `task_comment_id`, `dateadded`) VALUES
(1, 1, 'customer', '200411 Prosthesis Manufacting Flowchart Air media.pdf', 'application/pdf', 1, 'f8fbbec75af08d5a848baa7d865cfb96', NULL, NULL, NULL, 1, 0, 0, '2020-04-21 09:09:45'),
(2, 1, 'expense', 'Invoice_Web_Design_Invoice_from_CreatiVOX_Inc.pdf', 'application/pdf', 0, 'cee8e4c8e0695166b7941f1c25707b0f', NULL, NULL, NULL, 1, 0, 0, '2020-06-29 21:46:40'),
(3, 2, 'expense', '2020-06-01--2020-07-28_Invoice_Summary.pdf', 'application/pdf', 0, '9d9ed2f5bd8a8baa1a4b9c8e9c7b963b', NULL, NULL, NULL, 2, 0, 0, '2020-07-28 14:51:55'),
(4, 6, 'expense', 'Envato Market Invoice IVBF38805460.pdf', 'application/pdf', 0, '4024d1512c2116100ea17b4432f46d30', NULL, NULL, NULL, 1, 0, 0, '2020-08-29 20:53:13'),
(5, 7, 'expense', 'Envato Market Invoice IVIP39060283.pdf', 'application/pdf', 0, '855943d217437b0062ec0c48a8c2a620', NULL, NULL, NULL, 1, 0, 0, '2020-08-29 20:55:52'),
(6, 8, 'expense', 'Envato Market Invoice IVIP39091614.pdf', 'application/pdf', 0, 'd38923dc12a98f8c8da0637c58dd1e1f', NULL, NULL, NULL, 1, 0, 0, '2020-08-29 21:01:29'),
(7, 9, 'expense', 'Envato Market Invoice IVIP39060281.pdf', 'application/pdf', 0, '64c15a32818dcbee75b55497ba4d174d', NULL, NULL, NULL, 1, 0, 0, '2020-08-29 21:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblform_questions`
--

DROP TABLE IF EXISTS `tblform_questions`;
CREATE TABLE IF NOT EXISTS `tblform_questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `question_order` int(11) NOT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box`
--

DROP TABLE IF EXISTS `tblform_question_box`;
CREATE TABLE IF NOT EXISTS `tblform_question_box` (
  `boxid` int(11) NOT NULL AUTO_INCREMENT,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`boxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box_description`
--

DROP TABLE IF EXISTS `tblform_question_box_description`;
CREATE TABLE IF NOT EXISTS `tblform_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`questionboxdescriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_results`
--

DROP TABLE IF EXISTS `tblform_results`;
CREATE TABLE IF NOT EXISTS `tblform_results` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `resultsetid` int(11) NOT NULL,
  PRIMARY KEY (`resultid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgdpr_requests`
--

DROP TABLE IF EXISTS `tblgdpr_requests`;
CREATE TABLE IF NOT EXISTS `tblgdpr_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `request_type` varchar(191) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_from` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory_history`
--

DROP TABLE IF EXISTS `tblinventory_history`;
CREATE TABLE IF NOT EXISTS `tblinventory_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assets` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `acction` varchar(50) NOT NULL,
  `inventory_begin` int(11) DEFAULT NULL,
  `inventory_end` int(11) NOT NULL,
  `cost` decimal(15,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoicepaymentrecords`
--

DROP TABLE IF EXISTS `tblinvoicepaymentrecords`;
CREATE TABLE IF NOT EXISTS `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `paymentmethod` (`paymentmethod`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinvoicepaymentrecords`
--

INSERT INTO `tblinvoicepaymentrecords` (`id`, `invoiceid`, `amount`, `paymentmode`, `paymentmethod`, `date`, `daterecorded`, `note`, `transactionid`) VALUES
(5, 2, '5215.00', 'stripe', NULL, '2020-05-12', '2020-05-12 14:01:48', '', 'pi_1Gi2O14309uSzfMPW49aG2VO'),
(6, 10, '2210.00', 'stripe', NULL, '2020-06-18', '2020-06-18 14:34:50', '', 'pi_1GvSYX4309uSzfMPh0BL1mry'),
(7, 7, '2770.00', 'stripe', NULL, '2020-06-18', '2020-06-18 14:36:21', '', 'pi_1GvSa54309uSzfMPn64TG2RR'),
(8, 12, '5000.00', 'stripe', '', '2020-08-13', '2020-08-14 09:35:20', 'DB Error - Manual Enter', 'pi_1HFh6D4309uSzfMPzSCzRnbj'),
(9, 11, '1184.01', 'stripe', '', '2020-08-13', '2020-08-14 09:36:40', 'DB Error - Manual Entry', 'pi_1HFh7p4309uSzfMPm3zW6kZG’'),
(10, 48, '3360.00', '1', NULL, '2020-10-07', '2020-10-07 10:54:28', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoices`
--

DROP TABLE IF EXISTS `tblinvoices`;
CREATE TABLE IF NOT EXISTS `tblinvoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT 1,
  `clientnote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `last_overdue_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT 0,
  `allowed_payment_modes` mediumtext DEFAULT NULL,
  `token` mediumtext DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) DEFAULT 0,
  `subscription_id` int(11) NOT NULL DEFAULT 0,
  `shipping_active` int(11) NOT NULL DEFAULT 0,
  `payment_terms_active` int(11) NOT NULL DEFAULT 0,
  `term_and_conditions_active` int(11) NOT NULL DEFAULT 0,
  `labour_terms_active` int(11) NOT NULL DEFAULT 0,
  `shipping_terms` longtext NOT NULL,
  `payment_terms` longtext NOT NULL,
  `labour_terms` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `currency` (`currency`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`),
  KEY `sale_agent` (`sale_agent`),
  KEY `total` (`total`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinvoices`
--

INSERT INTO `tblinvoices` (`id`, `sent`, `datesend`, `clientid`, `deleted_customer_name`, `number`, `prefix`, `number_format`, `datecreated`, `date`, `duedate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `shipping`, `addedfrom`, `hash`, `status`, `clientnote`, `adminnote`, `last_overdue_reminder`, `cancel_overdue_reminders`, `allowed_payment_modes`, `token`, `discount_percent`, `discount_total`, `discount_type`, `recurring`, `recurring_type`, `custom_recurring`, `cycles`, `total_cycles`, `is_recurring_from`, `last_recurring_date`, `terms`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_invoice`, `show_quantity_as`, `project_id`, `subscription_id`, `shipping_active`, `payment_terms_active`, `term_and_conditions_active`, `labour_terms_active`, `shipping_terms`, `payment_terms`, `labour_terms`) VALUES
(54, 0, NULL, 3, NULL, 122, 'INV-', 3, '2020-10-14 06:24:30', '2020-10-14', '2020-11-13', 3, '126.00', '2.99', '1126.00', '0.00', 1000, 4, '7e9af8a08af40b9f513c6052ece3a346', 1, 'gdfgdfsgsdfgdsfdfsgdfsfd', '', NULL, 0, 'a:1:{i:0;s:1:\"1\";}', NULL, '0.00', '0.00', '', 0, NULL, 0, 0, 0, NULL, NULL, 'fdgdfsgsfdgfdgsfdgfdgdfg', 0, '35 Ripley Ave.<br />\r\nSuite 1', 'Toronto', 'ON', 'M6S3P2', 40, '35 Ripley Ave.<br />\r\nSuite 1', 'Toronto', 'ON', 'M6S3P2', 40, 1, 1, 1, 0, 0, 1, 1, 1, 1, 'dfgsdfgdfgdfg', 'dfgdfgsdfgdsfgdfgdfg', 'fdgdfgdfsgfdgdsfg');

-- --------------------------------------------------------

--
-- Table structure for table `tblitemable`
--

DROP TABLE IF EXISTS `tblitemable`;
CREATE TABLE IF NOT EXISTS `tblitemable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext DEFAULT NULL,
  `part_number` varchar(100) NOT NULL,
  `qty` decimal(15,2) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `group_order` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `qty` (`qty`),
  KEY `rate` (`rate`)
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitemable`
--

INSERT INTO `tblitemable` (`id`, `rel_id`, `rel_type`, `description`, `long_description`, `part_number`, `qty`, `rate`, `unit`, `group_id`, `item_order`, `group_order`, `discount`, `discount_type`) VALUES
(464, 10, 'estimate', 'Test Product 2', 'Test Product 2', 'RWE-fdf-zxc23', '1.00', '25.00', '', 1, 5, 1, 0, 'percentage'),
(465, 10, 'estimate', 'sdafds', 'fsdafdsfsd', '423432asdasd', '1.00', '23.00', '', 1, 4, 1, 0, 'percentage'),
(466, 10, 'estimate', 'Test Product', 'Test Product', 'CSX-07-0cx', '1.00', '23.00', '', 3, 1, 2, 0, 'percentage'),
(467, 10, 'estimate', 'sdfsdaf', 'sdafsdaf', '2321', '1.00', '22.00', '', 3, 2, 2, 0, 'percentage'),
(468, 10, 'estimate', 'gfdsf', 'dfsdfsd', '231ADdsfsd', '1.00', '33.00', '', 3, 3, 2, 0, 'percentage'),
(469, 54, 'invoice', 'Test Product 2', 'Test Product 2', 'RWE-fdf-zxc23', '1.00', '25.00', '', 1, 1, NULL, 0, 'percentage'),
(470, 54, 'invoice', 'sdafds', 'fsdafdsfsd', '423432asdasd', '1.00', '23.00', '', 1, 2, NULL, 0, 'percentage'),
(471, 54, 'invoice', 'Test Product', 'Test Product', 'CSX-07-0cx', '1.00', '23.00', '', 3, 3, NULL, 0, 'percentage'),
(472, 54, 'invoice', 'sdfsdaf', 'sdafsdaf', '2321', '1.00', '22.00', '', 3, 4, NULL, 0, 'percentage'),
(473, 54, 'invoice', 'gfdsf', 'dfsdfsd', '231ADdsfsd', '1.00', '33.00', '', 3, 5, NULL, 0, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

DROP TABLE IF EXISTS `tblitems`;
CREATE TABLE IF NOT EXISTS `tblitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `long_description` text DEFAULT NULL,
  `part_number` varchar(100) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `commodity_code` varchar(100) NOT NULL,
  `commodity_barcode` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `sku_code` varchar(200) DEFAULT NULL,
  `sku_name` varchar(200) DEFAULT NULL,
  `purchase_price` decimal(15,2) DEFAULT NULL,
  `sub_group` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tax` (`tax`),
  KEY `tax2` (`tax2`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`id`, `description`, `long_description`, `part_number`, `rate`, `tax`, `tax2`, `unit`, `group_id`, `commodity_code`, `commodity_barcode`, `unit_id`, `sku_code`, `sku_name`, `purchase_price`, `sub_group`) VALUES
(16, 'Test Product', 'Test Product', 'CSX-07-0cx', '23.00', 1, NULL, '', 3, '', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Test Product 1', 'Test Product 1', 'ABC-def-ght', '20.00', NULL, NULL, '', 2, '', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Test Product 2', 'Test Product 2', 'RWE-fdf-zxc23', '25.00', NULL, NULL, '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblitems_groups`
--

DROP TABLE IF EXISTS `tblitems_groups`;
CREATE TABLE IF NOT EXISTS `tblitems_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `commodity_group_code` varchar(100) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL,
  `note` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitems_groups`
--

INSERT INTO `tblitems_groups` (`id`, `name`, `commodity_group_code`, `order`, `display`, `note`) VALUES
(1, 'TestGroup', NULL, NULL, NULL, NULL),
(2, 'TestGroup1', NULL, NULL, NULL, NULL),
(3, 'Test Group 2', NULL, NULL, NULL, NULL),
(4, 'Test Group 3', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_tax`
--

DROP TABLE IF EXISTS `tblitem_tax`;
CREATE TABLE IF NOT EXISTS `tblitem_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitem_tax`
--

INSERT INTO `tblitem_tax` (`id`, `itemid`, `rel_id`, `rel_type`, `taxrate`, `taxname`) VALUES
(22, 93, 14, 'invoice', '13.00', 'HST'),
(23, 94, 15, 'invoice', '13.00', 'HST'),
(24, 97, 16, 'invoice', '13.00', 'HST'),
(25, 98, 16, 'invoice', '13.00', 'HST'),
(26, 101, 16, 'invoice', '13.00', 'HST'),
(27, 104, 18, 'invoice', '13.00', 'HST'),
(28, 105, 18, 'invoice', '13.00', 'HST'),
(29, 108, 18, 'invoice', '13.00', 'HST'),
(30, 110, 18, 'invoice', '13.00', 'HST'),
(31, 116, 19, 'invoice', '13.00', 'HST'),
(32, 123, 20, 'invoice', '13.00', 'HST'),
(33, 130, 21, 'invoice', '13.00', 'HST'),
(34, 132, 22, 'invoice', '13.00', 'HST'),
(35, 133, 22, 'invoice', '13.00', 'HST'),
(36, 137, 23, 'invoice', '13.00', 'HST'),
(47, 176, 10, 'estimate', '13.00', 'HST'),
(48, 179, 10, 'estimate', '13.00', 'HST'),
(49, 180, 10, 'estimate', '13.00', 'HST'),
(50, 183, 10, 'estimate', '13.00', 'HST'),
(51, 184, 11, 'estimate', '13.00', 'HST'),
(52, 187, 11, 'estimate', '13.00', 'HST'),
(53, 193, 11, 'estimate', '13.00', 'HST'),
(54, 194, 12, 'estimate', '13.00', 'HST'),
(55, 200, 12, 'estimate', '13.00', 'HST'),
(56, 202, 27, 'invoice', '13.00', 'HST'),
(57, 208, 27, 'invoice', '13.00', 'HST'),
(58, 210, 28, 'invoice', '13.00', 'HST'),
(59, 216, 28, 'invoice', '13.00', 'HST'),
(60, 218, 29, 'invoice', '13.00', 'HST'),
(61, 219, 29, 'invoice', '13.00', 'HST'),
(62, 227, 29, 'invoice', '13.00', 'HST'),
(63, 229, 13, 'estimate', '13.00', 'HST'),
(64, 235, 30, 'invoice', '13.00', 'HST'),
(65, 238, 31, 'invoice', '13.00', 'HST'),
(66, 241, 31, 'invoice', '13.00', 'HST'),
(67, 242, 31, 'invoice', '13.00', 'HST'),
(68, 243, 31, 'invoice', '13.00', 'HST'),
(69, 246, 32, 'invoice', '13.00', 'HST'),
(70, 247, 32, 'invoice', '13.00', 'HST'),
(71, 250, 32, 'invoice', '13.00', 'HST'),
(72, 252, 32, 'invoice', '13.00', 'HST'),
(73, 253, 32, 'invoice', '13.00', 'HST'),
(74, 256, 32, 'invoice', '13.00', 'HST'),
(75, 257, 33, 'invoice', '13.00', 'HST'),
(76, 260, 33, 'invoice', '13.00', 'HST'),
(77, 261, 33, 'invoice', '13.00', 'HST'),
(78, 264, 33, 'invoice', '13.00', 'HST'),
(79, 266, 14, 'estimate', '13.00', 'HST'),
(80, 269, 14, 'estimate', '13.00', 'HST'),
(81, 270, 14, 'estimate', '13.00', 'HST'),
(82, 273, 14, 'estimate', '13.00', 'HST'),
(83, 276, 34, 'invoice', '13.00', 'HST'),
(84, 277, 34, 'invoice', '13.00', 'HST'),
(85, 278, 34, 'invoice', '13.00', 'HST'),
(86, 279, 34, 'invoice', '13.00', 'HST'),
(87, 285, 15, 'estimate', '13.00', 'HST'),
(88, 287, 15, 'estimate', '13.00', 'HST'),
(89, 296, 35, 'invoice', '13.00', 'HST'),
(90, 297, 35, 'invoice', '13.00', 'HST'),
(91, 306, 16, 'estimate', '13.00', 'HST'),
(92, 310, 36, 'invoice', '13.00', 'HST'),
(93, 314, 17, 'estimate', '13.00', 'HST'),
(94, 318, 37, 'invoice', '13.00', 'HST'),
(95, 319, 18, 'estimate', '13.00', 'HST'),
(96, 325, 18, 'estimate', '13.00', 'HST'),
(97, 326, 18, 'estimate', '13.00', 'HST'),
(98, 327, 38, 'invoice', '13.00', 'HST'),
(99, 330, 38, 'invoice', '13.00', 'HST'),
(100, 334, 38, 'invoice', '13.00', 'HST'),
(101, 336, 39, 'invoice', '13.00', 'HST'),
(102, 342, 39, 'invoice', '13.00', 'HST'),
(103, 343, 40, 'invoice', '13.00', 'HST'),
(104, 349, 40, 'invoice', '13.00', 'HST'),
(105, 353, 41, 'invoice', '13.00', 'HST'),
(106, 360, 41, 'invoice', '13.00', 'HST'),
(108, 368, 42, 'invoice', '13.00', 'HST'),
(109, 377, 2, 'estimate', '13.00', 'HST'),
(110, 381, 44, 'invoice', '13.00', 'HST'),
(111, 385, 4, 'estimate', '13.00', 'HST'),
(112, 391, 4, 'estimate', '13.00', 'HST'),
(113, 392, 46, 'invoice', '13.00', 'HST'),
(114, 398, 46, 'invoice', '13.00', 'HST'),
(115, 399, 5, 'estimate', '13.00', 'HST'),
(116, 405, 5, 'estimate', '13.00', 'HST'),
(117, 406, 47, 'invoice', '13.00', 'HST'),
(118, 412, 47, 'invoice', '13.00', 'HST'),
(119, 413, 48, 'invoice', '13.00', 'HST'),
(120, 419, 6, 'estimate', '13.00', 'HST'),
(121, 420, 49, 'invoice', '13.00', 'HST'),
(122, 421, 49, 'invoice', '13.00', 'HST'),
(123, 428, 50, 'invoice', '13.00', 'HST'),
(124, 433, 50, 'invoice', '13.00', 'HST'),
(125, 436, 7, 'estimate', '13.00', 'HST'),
(126, 438, 7, 'estimate', '13.00', 'HST'),
(127, 466, 10, 'estimate', '13.00', 'HST'),
(128, 471, 54, 'invoice', '13.00', 'HST');

-- --------------------------------------------------------

--
-- Table structure for table `tblknowedge_base_article_feedback`
--

DROP TABLE IF EXISTS `tblknowedge_base_article_feedback`;
CREATE TABLE IF NOT EXISTS `tblknowedge_base_article_feedback` (
  `articleanswerid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`articleanswerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base`
--

DROP TABLE IF EXISTS `tblknowledge_base`;
CREATE TABLE IF NOT EXISTS `tblknowledge_base` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT 0,
  `staff_article` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base_groups`
--

DROP TABLE IF EXISTS `tblknowledge_base_groups`;
CREATE TABLE IF NOT EXISTS `tblknowledge_base_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `group_slug` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT 0,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads`
--

DROP TABLE IF EXISTS `tblleads`;
CREATE TABLE IF NOT EXISTS `tblleads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(65) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT 1,
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT 0,
  `junk` int(11) NOT NULL DEFAULT 0,
  `last_lead_status` int(11) NOT NULL DEFAULT 0,
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT 0,
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `lead_value` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `company` (`company`),
  KEY `email` (`email`),
  KEY `assigned` (`assigned`),
  KEY `status` (`status`),
  KEY `source` (`source`),
  KEY `lastcontact` (`lastcontact`),
  KEY `dateadded` (`dateadded`),
  KEY `leadorder` (`leadorder`),
  KEY `from_form_id` (`from_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_email_integration`
--

DROP TABLE IF EXISTS `tblleads_email_integration`;
CREATE TABLE IF NOT EXISTS `tblleads_email_integration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT 5,
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT 1,
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT 1,
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext DEFAULT NULL,
  `mark_public` int(11) NOT NULL DEFAULT 0,
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT 1,
  `delete_after_import` int(11) NOT NULL DEFAULT 0,
  `create_task_if_customer` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_email_integration`
--

INSERT INTO `tblleads_email_integration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`, `create_task_if_customer`) VALUES
(1, 0, '', '', '', 10, 0, 0, 0, 'tls', 'INBOX', '', 1, 1, 'assigned', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_sources`
--

DROP TABLE IF EXISTS `tblleads_sources`;
CREATE TABLE IF NOT EXISTS `tblleads_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_sources`
--

INSERT INTO `tblleads_sources` (`id`, `name`) VALUES
(2, 'Facebook'),
(1, 'Google'),
(3, 'Website');

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_status`
--

DROP TABLE IF EXISTS `tblleads_status`;
CREATE TABLE IF NOT EXISTS `tblleads_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_status`
--

INSERT INTO `tblleads_status` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
(1, 'Customer', 1000, '#7cb342', 1),
(2, 'NEW', 2, '#28B8DA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_activity_log`
--

DROP TABLE IF EXISTS `tbllead_activity_log`;
CREATE TABLE IF NOT EXISTS `tbllead_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `custom_activity` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_integration_emails`
--

DROP TABLE IF EXISTS `tbllead_integration_emails`;
CREATE TABLE IF NOT EXISTS `tbllead_integration_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbllistemails`
--

DROP TABLE IF EXISTS `tbllistemails`;
CREATE TABLE IF NOT EXISTS `tbllistemails` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmaillistscustomfields`
--

DROP TABLE IF EXISTS `tblmaillistscustomfields`;
CREATE TABLE IF NOT EXISTS `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmaillistscustomfieldvalues`
--

DROP TABLE IF EXISTS `tblmaillistscustomfieldvalues`;
CREATE TABLE IF NOT EXISTS `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldvalueid`),
  KEY `listid` (`listid`),
  KEY `customfieldid` (`customfieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_queue`
--

DROP TABLE IF EXISTS `tblmail_queue`;
CREATE TABLE IF NOT EXISTS `tblmail_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `engine` varchar(40) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `cc` text DEFAULT NULL,
  `bcc` text DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `alt_message` mediumtext DEFAULT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `attachments` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmigrations`
--

DROP TABLE IF EXISTS `tblmigrations`;
CREATE TABLE IF NOT EXISTS `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmigrations`
--

INSERT INTO `tblmigrations` (`version`) VALUES
(244);

-- --------------------------------------------------------

--
-- Table structure for table `tblmilestones`
--

DROP TABLE IF EXISTS `tblmilestones`;
CREATE TABLE IF NOT EXISTS `tblmilestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `description_visible_to_customer` tinyint(1) DEFAULT 0,
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT 0,
  `datecreated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmilestones`
--

INSERT INTO `tblmilestones` (`id`, `name`, `description`, `description_visible_to_customer`, `due_date`, `project_id`, `color`, `milestone_order`, `datecreated`) VALUES
(1, 'Page Wireframe Approval', 'Page layout blocking and structural organization of the content.', 1, '2020-04-28', 2, NULL, 2, '2020-04-23'),
(2, 'Overall website design approval (Home Page)', 'Define overall website look and feel.<br />\r\nFinalize Home page in the process.', 1, '2020-05-07', 2, NULL, 3, '2020-04-23'),
(3, 'Overall Website Sitemap Structure and Navigation flow', 'Define (as many as possible) pages needed and links to portals', 1, '2020-05-07', 2, NULL, 4, '2020-04-23'),
(4, 'Rebranding', 'Recreate the overall look and feel of the logo and colours. This will establish the company in a new light.', 1, '2020-05-16', 2, '#28B8DA', 1, '2020-04-23'),
(5, 'Information Gathering', 'All requirements needed to proceed with the site', 0, '2020-05-31', 2, '#c53da9', 0, '2020-04-23'),
(6, 'Phase 1: Profiles', 'Parameters:<br />\r\n1.1.1: Project name<br />\r\n1.1.2: Account<br />\r\n1.1.3: Client Contact     Multiple<br />\r\n1.1.4: Owner    Employee<br />\r\n1.1.5  Delivery Date<br />\r\n1.1.6: create Date<br />\r\n1.1.7: Projected sales date<br />\r\n1.1.8:  Revenue  Potential  Linked  to  latest  Estimate<br />\r\n1.1.9:  Probability<br />\r\n1.1.10  Status <br />\r\n1.1.10.1: Closed<br />\r\n<br />\r\n2: Contacts<br />\r\n3: Notes<br />\r\n4: Proposal<br />\r\n5: Estimates', 0, '2020-05-15', 3, NULL, 1, '2020-05-11'),
(7, 'Phase 2: ', '6: Expenses<br />\r\n7: Tasks<br />\r\n8: Files<br />\r\n9: Call logs', 0, '2020-05-22', 3, NULL, 2, '2020-05-11'),
(8, 'Phase 3', '10: Team<br />\r\n11: Activity', 0, '2020-05-29', 3, NULL, 3, '2020-05-11'),
(9, 'Testing', '', 0, '2020-05-29', 3, NULL, 4, '2020-05-11'),
(10, 'AIR Media Tests', '', 0, '2020-05-31', 3, NULL, 5, '2020-05-11'),
(11, 'Customization', '', 0, '2020-05-22', 3, NULL, 6, '2020-05-11'),
(12, 'RM Webinar Landing Page Completion', 'Complete Design Development and Test of Landing Page', 0, '2020-05-15', 4, NULL, 0, '2020-05-12'),
(13, 'Hand RM\'s events/webinar system integrated with ZOOM', 'Hand off of RM\'s custom system including:<br />\r\n<br />\r\nWebinar manager<br />\r\nPayment gateway Integration <br />\r\nZoom Platform Integration<br />\r\nEmail notifications registrations and payment receipts.<br />\r\n', 0, '2020-05-17', 4, NULL, 1, '2020-05-12'),
(14, 'Promotion and Advertising campaign Report', '', 0, '2020-05-22', 4, NULL, 3, '2020-05-12'),
(15, 'End to end testing', '', 0, '2020-05-20', 4, NULL, 2, '2020-05-12'),
(16, 'Domain', '', 0, '2020-07-17', 5, NULL, 1, '2020-07-17'),
(17, 'Email Routing', '', 0, '2020-07-17', 5, NULL, 2, '2020-07-17'),
(18, 'Graphics', '', 0, '2020-07-17', 5, NULL, 3, '2020-07-17'),
(19, 'Testing', '', 0, '2020-07-19', 5, NULL, 1, '2020-07-17'),
(20, 'Planning', '', 0, '2020-08-28', 7, NULL, 0, '2020-08-24'),
(21, 'Design', '', 0, '2020-09-30', 7, NULL, 2, '2020-08-24'),
(22, 'Branding', '', 0, '2020-09-05', 7, NULL, 1, '2020-08-24'),
(23, 'Development: Phase 1', '', 0, '2020-09-30', 7, NULL, 4, '2020-08-24'),
(24, 'Testing', '', 0, '2020-09-30', 7, NULL, 5, '2020-08-24'),
(25, 'Testing', '', 0, '2020-09-30', 8, NULL, 100, '2020-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblmodules`
--

DROP TABLE IF EXISTS `tblmodules`;
CREATE TABLE IF NOT EXISTS `tblmodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(55) NOT NULL,
  `installed_version` varchar(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmodules`
--

INSERT INTO `tblmodules` (`id`, `module_name`, `installed_version`, `active`) VALUES
(1, 'assets', '1.0.0', 1),
(2, 'api', '1.0.0', 1),
(3, 'menu_setup', '2.3.0', 1),
(4, 'surveys', '2.3.0', 1),
(5, 'backup', '2.3.0', 1),
(6, 'opportunities', '2.3.0', 1),
(7, 'call_logs', '1.0.1', 1),
(8, 'ultimate_dark_theme', '1.0.0', 0),
(9, 'resource_booking', '1.0.0', 0),
(10, 'team_password', '1.0.5', 1),
(11, 'purchase', '1.0.6', 0),
(12, 'okr', '1.0.0', 0),
(13, 'crm_backup', '1.0.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_comment_likes`
--

DROP TABLE IF EXISTS `tblnewsfeed_comment_likes`;
CREATE TABLE IF NOT EXISTS `tblnewsfeed_comment_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_posts`
--

DROP TABLE IF EXISTS `tblnewsfeed_posts`;
CREATE TABLE IF NOT EXISTS `tblnewsfeed_posts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_comments`
--

DROP TABLE IF EXISTS `tblnewsfeed_post_comments`;
CREATE TABLE IF NOT EXISTS `tblnewsfeed_post_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_likes`
--

DROP TABLE IF EXISTS `tblnewsfeed_post_likes`;
CREATE TABLE IF NOT EXISTS `tblnewsfeed_post_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

DROP TABLE IF EXISTS `tblnotes`;
CREATE TABLE IF NOT EXISTS `tblnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

DROP TABLE IF EXISTS `tblnotifications`;
CREATE TABLE IF NOT EXISTS `tblnotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` int(11) NOT NULL DEFAULT 0,
  `isread_inline` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT 0,
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext DEFAULT NULL,
  `additional_data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblnotifications`
--

INSERT INTO `tblnotifications` (`id`, `isread`, `isread_inline`, `date`, `description`, `fromuserid`, `fromclientid`, `from_fullname`, `touserid`, `fromcompany`, `link`, `additional_data`) VALUES
(1, 1, 0, '2020-04-18 17:48:14', 'not_estimate_customer_accepted', 0, 0, '', 1, 1, 'estimates/list_estimates/2', 'a:1:{i:0;s:10:\"EST-000002\";}'),
(2, 1, 1, '2020-04-18 17:50:13', 'not_invoice_payment_recorded', 0, 0, '', 1, 1, 'invoices/list_invoices/1', 'a:1:{i:0;s:10:\"INV-000001\";}'),
(3, 1, 0, '2020-04-20 15:11:01', 'not_customer_viewed_estimate', 0, 0, '', 1, 1, 'estimates/list_estimates/1', 'a:1:{i:0;s:10:\"EST-200054\";}'),
(4, 1, 0, '2020-04-20 15:39:31', 'not_estimate_customer_accepted', 0, 0, '', 1, 1, 'estimates/list_estimates/1', 'a:1:{i:0;s:10:\"EST-200054\";}'),
(5, 1, 0, '2020-04-20 15:39:32', 'not_customer_viewed_invoice', 0, 0, '', 1, 1, 'invoices/list_invoices/2', 'a:1:{i:0;s:13:\"INV-000001-20\";}'),
(6, 1, 0, '2020-04-20 15:45:53', 'not_customer_viewed_proposal', 0, 0, '', 1, 1, 'proposals/list_proposals/1', 'a:1:{i:0;s:10:\"PRO-000001\";}'),
(7, 1, 0, '2020-04-20 15:46:35', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/1', 'a:1:{i:0;s:10:\"PRO-000001\";}'),
(8, 1, 0, '2020-04-20 16:22:58', 'not_customer_viewed_estimate', 0, 0, '', 1, 1, 'estimates/list_estimates/1', 'a:1:{i:0;s:10:\"EST-200054\";}'),
(9, 1, 0, '2020-04-20 16:33:58', 'not_customer_viewed_proposal', 0, 0, '', 2, 1, 'proposals/list_proposals/2', 'a:1:{i:0;s:10:\"PRO-000002\";}'),
(10, 1, 0, '2020-04-20 16:34:59', 'not_proposal_proposal_accepted', 0, 0, '', 2, 1, 'proposals/list_proposals/2', 'a:1:{i:0;s:10:\"PRO-000002\";}'),
(11, 1, 0, '2020-04-20 16:37:43', 'not_customer_viewed_estimate', 0, 0, '', 1, 1, 'estimates/list_estimates/3', 'a:1:{i:0;s:10:\"EST-000002\";}'),
(12, 1, 0, '2020-04-20 16:37:43', 'not_customer_viewed_estimate', 0, 0, '', 2, 1, 'estimates/list_estimates/3', 'a:1:{i:0;s:10:\"EST-000002\";}'),
(13, 1, 0, '2020-04-20 16:38:03', 'not_estimate_customer_accepted', 0, 0, '', 1, 1, 'estimates/list_estimates/3', 'a:1:{i:0;s:10:\"EST-000002\";}'),
(14, 1, 0, '2020-04-20 16:38:04', 'not_estimate_customer_accepted', 0, 0, '', 2, 1, 'estimates/list_estimates/3', 'a:1:{i:0;s:10:\"EST-000002\";}'),
(15, 1, 0, '2020-04-20 16:53:34', 'not_customer_viewed_invoice', 0, 0, '', 1, 1, 'invoices/list_invoices/4', 'a:1:{i:0;s:13:\"INV-000003-20\";}'),
(16, 1, 0, '2020-04-20 16:53:34', 'not_customer_viewed_invoice', 0, 0, '', 2, 1, 'invoices/list_invoices/4', 'a:1:{i:0;s:13:\"INV-000003-20\";}'),
(17, 1, 0, '2020-04-20 21:00:38', 'not_customer_viewed_estimate', 0, 0, '', 1, 1, 'estimates/list_estimates/3', 'a:1:{i:0;s:10:\"EST-000002\";}'),
(18, 1, 0, '2020-04-20 21:00:38', 'not_customer_viewed_estimate', 0, 0, '', 2, 1, 'estimates/list_estimates/3', 'a:1:{i:0;s:10:\"EST-000002\";}'),
(19, 1, 0, '2020-04-22 14:10:57', 'not_customer_viewed_invoice', 0, 0, '', 4, 1, 'invoices/list_invoices/5', 'a:1:{i:0;s:13:\"INV-000004-20\";}'),
(20, 1, 0, '2020-04-22 14:15:44', 'not_invoice_payment_recorded', 0, 0, '', 4, 1, 'invoices/list_invoices/5', 'a:1:{i:0;s:13:\"INV-000004-20\";}'),
(21, 1, 0, '2020-04-22 14:17:30', 'not_invoice_payment_recorded', 0, 0, '', 4, 1, 'invoices/list_invoices/6', 'a:1:{i:0;s:13:\"INV-000005-20\";}'),
(22, 1, 0, '2020-04-22 15:48:58', 'not_invoice_payment_recorded', 0, 0, '', 1, 1, 'invoices/list_invoices/4', 'a:1:{i:0;s:13:\"INV-000003-20\";}'),
(23, 1, 0, '2020-04-22 15:48:59', 'not_invoice_payment_recorded', 0, 0, '', 2, 1, 'invoices/list_invoices/4', 'a:1:{i:0;s:13:\"INV-000003-20\";}'),
(24, 0, 0, '2020-04-22 21:49:14', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 3, NULL, 'projects/view/2', 'a:1:{i:0;s:22:\"Reverse Margin Website\";}'),
(25, 1, 0, '2020-04-22 21:49:14', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/2', 'a:1:{i:0;s:22:\"Reverse Margin Website\";}'),
(26, 1, 1, '2020-04-28 16:16:26', 'not_customer_viewed_invoice', 0, 0, '', 1, 1, 'invoices/list_invoices/2', 'a:1:{i:0;s:11:\"INV-0001-20\";}'),
(27, 1, 1, '2020-05-04 09:48:21', 'not_customer_viewed_proposal', 0, 1, 'Emil Svoboda', 1, NULL, 'proposals/list_proposals/1', 'a:1:{i:0;s:8:\"PRO-0001\";}'),
(28, 1, 1, '2020-05-09 10:03:18', 'not_customer_viewed_estimate', 0, 0, '', 1, 1, 'estimates/list_estimates/4', 'a:1:{i:0;s:15:\"AIR-EST-0129-20\";}'),
(29, 1, 0, '2020-05-11 20:38:24', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/1', 'a:1:{i:0;s:22:\"Reverse Margin CRM/ERP\";}'),
(30, 1, 0, '2020-05-11 20:38:24', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 4, NULL, 'projects/view/1', 'a:1:{i:0;s:22:\"Reverse Margin CRM/ERP\";}'),
(31, 1, 0, '2020-05-11 20:40:05', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/3', 'a:1:{i:0;s:18:\"Reverse Margin ERP\";}'),
(32, 1, 0, '2020-05-11 20:40:05', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 4, NULL, 'projects/view/3', 'a:1:{i:0;s:18:\"Reverse Margin ERP\";}'),
(33, 1, 0, '2020-05-11 20:49:23', 'not_task_assigned_to_you', 1, 0, 'Andrew Gordon', 4, NULL, '#taskid=4', 'a:1:{i:0;s:12:\"Profiles 1.1\";}'),
(34, 1, 0, '2020-05-11 20:49:39', 'not_task_added_you_as_follower', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=4', 'a:1:{i:0;s:12:\"Profiles 1.1\";}'),
(35, 1, 0, '2020-05-11 20:49:39', 'not_task_added_someone_as_follower', 1, 0, 'Andrew Gordon', 4, NULL, '#taskid=4', 'a:2:{i:0;s:10:\"Igor Silva\";i:1;s:12:\"Profiles 1.1\";}'),
(36, 1, 0, '2020-05-11 20:49:42', 'not_task_added_himself_as_follower', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=4', 'a:1:{i:0;s:12:\"Profiles 1.1\";}'),
(37, 1, 0, '2020-05-11 20:49:42', 'not_task_added_himself_as_follower', 1, 0, 'Andrew Gordon', 4, NULL, '#taskid=4', 'a:1:{i:0;s:12:\"Profiles 1.1\";}'),
(38, 1, 0, '2020-05-11 21:04:03', 'not_project_file_uploaded', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/3?group=project_files&file_id=1', NULL),
(39, 1, 0, '2020-05-11 21:04:03', 'not_project_file_uploaded', 1, 0, 'Andrew Gordon', 4, NULL, 'projects/view/3?group=project_files&file_id=1', NULL),
(40, 1, 0, '2020-05-11 21:06:12', 'not_project_file_uploaded', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/3?group=project_files&file_id=2', NULL),
(41, 1, 0, '2020-05-11 21:06:12', 'not_project_file_uploaded', 1, 0, 'Andrew Gordon', 4, NULL, 'projects/view/3?group=project_files&file_id=2', NULL),
(42, 1, 0, '2020-05-11 21:07:57', 'not_project_file_uploaded', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/3?group=project_files&file_id=3', NULL),
(43, 1, 0, '2020-05-11 21:07:57', 'not_project_file_uploaded', 1, 0, 'Andrew Gordon', 4, NULL, 'projects/view/3?group=project_files&file_id=3', NULL),
(44, 1, 0, '2020-05-12 14:01:53', 'not_invoice_payment_recorded', 0, 0, '', 1, 1, 'invoices/list_invoices/2', 'a:1:{i:0;s:11:\"INV-0001-20\";}'),
(45, 0, 0, '2020-05-12 15:58:13', 'not_staff_added_as_project_member', 2, 0, 'Igor Silva', 3, NULL, 'projects/view/4', 'a:1:{i:0;s:29:\"Reverse Margin Webinar Series\";}'),
(46, 1, 0, '2020-05-12 16:29:57', 'not_staff_added_as_project_member', 2, 0, 'Igor Silva', 6, NULL, 'projects/view/4', 'a:1:{i:0;s:29:\"Reverse Margin Webinar Series\";}'),
(47, 0, 0, '2020-05-12 16:29:57', 'not_staff_added_as_project_member', 2, 0, 'Igor Silva', 5, NULL, 'projects/view/4', 'a:1:{i:0;s:29:\"Reverse Margin Webinar Series\";}'),
(48, 1, 0, '2020-05-12 21:42:59', 'not_task_assigned_to_you', 2, 0, 'Igor Silva', 6, NULL, '#taskid=22', 'a:1:{i:0;s:40:\"Prepare Page Layout Banners and graphics\";}'),
(49, 0, 0, '2020-05-12 21:50:13', 'not_task_assigned_to_you', 2, 0, 'Igor Silva', 3, NULL, '#taskid=22', 'a:1:{i:0;s:40:\"Prepare Page Layout Banners and graphics\";}'),
(50, 1, 0, '2020-05-12 22:00:33', 'not_customer_viewed_proposal', 0, 0, '', 1, 1, 'proposals/list_proposals/1', 'a:1:{i:0;s:8:\"PRO-0001\";}'),
(51, 0, 0, '2020-05-12 22:28:31', 'not_task_assigned_to_you', 2, 0, 'Igor Silva', 5, NULL, '#taskid=25', 'a:1:{i:0;s:36:\"RM\'s Event/Webinar Management System\";}'),
(52, 0, 0, '2020-05-12 22:28:40', 'not_task_assigned_to_you', 2, 0, 'Igor Silva', 5, NULL, '#taskid=26', 'a:1:{i:0;s:57:\"System integration with WooCommerce and a Payment Gateway\";}'),
(53, 0, 0, '2020-05-12 22:28:51', 'not_task_assigned_to_you', 2, 0, 'Igor Silva', 5, NULL, '#taskid=27', 'a:1:{i:0;s:47:\"Integration with Zoom  Webinar 3rd party System\";}'),
(54, 0, 0, '2020-05-12 22:28:59', 'not_task_assigned_to_you', 2, 0, 'Igor Silva', 5, NULL, '#taskid=28', 'a:1:{i:0;s:72:\"Front-end / Back-end test of settings, features and registration process\";}'),
(55, 0, 0, '2020-05-12 22:29:34', 'not_task_assigned_to_you', 2, 0, 'Igor Silva', 6, NULL, '#taskid=33', 'a:1:{i:0;s:41:\"Prepare all email notifications (CONTENT)\";}'),
(56, 1, 0, '2020-05-13 11:36:14', 'not_customer_viewed_proposal', 0, 1, 'Emil Svoboda', 1, NULL, 'proposals/list_proposals/1', 'a:1:{i:0;s:8:\"PRO-0001\";}'),
(57, 1, 1, '2020-05-13 11:38:40', 'not_proposal_comment_from_client', 0, 1, '', 1, 1, 'proposals/list_proposals/1', 'a:1:{i:0;s:31:\"Reverse Margin CRM/ERP: Phase 1\";}'),
(58, 1, 0, '2020-05-13 20:44:19', 'not_customer_viewed_proposal', 0, 1, 'Emil Svoboda', 1, NULL, 'proposals/list_proposals/1', 'a:1:{i:0;s:8:\"PRO-0001\";}'),
(59, 0, 0, '2020-05-14 18:55:13', 'not_task_status_changed', 2, 0, 'Igor Silva', 6, NULL, '#taskid=33', 'a:2:{i:0;s:41:\"Prepare all email notifications (CONTENT)\";i:1;s:11:\"In Progress\";}'),
(60, 0, 0, '2020-05-14 18:55:36', 'not_task_status_changed', 2, 0, 'Igor Silva', 3, NULL, '#taskid=22', 'a:2:{i:0;s:40:\"Prepare Page Layout Banners and graphics\";i:1;s:17:\"Awaiting Feedback\";}'),
(61, 0, 0, '2020-05-14 18:55:50', 'not_task_status_changed', 2, 0, 'Igor Silva', 6, NULL, '#taskid=33', 'a:2:{i:0;s:41:\"Prepare all email notifications (CONTENT)\";i:1;s:11:\"Not Started\";}'),
(62, 1, 1, '2020-05-25 09:22:31', 'not_customer_viewed_proposal', 0, 1, 'Emil Svoboda', 1, NULL, 'proposals/list_proposals/1', 'a:1:{i:0;s:8:\"PRO-0001\";}'),
(63, 1, 0, '2020-06-03 18:31:09', 'not_estimate_customer_declined', 0, 0, '', 2, 1, 'estimates/list_estimates/5', 'a:1:{i:0;s:15:\"AIR-EST-0130-20\";}'),
(64, 1, 0, '2020-06-04 10:07:25', 'not_customer_viewed_estimate', 0, 0, '', 2, 1, 'estimates/list_estimates/5', 'a:1:{i:0;s:15:\"AIR-EST-0130-20\";}'),
(65, 1, 0, '2020-06-08 08:58:12', 'not_task_marked_as_complete', 2, 0, 'Igor Silva', 1, NULL, '#taskid=3', 'a:1:{i:0;s:25:\"Get all 3D Files from Lab\";}'),
(66, 0, 0, '2020-06-08 08:59:34', 'not_task_status_changed', 2, 0, 'Igor Silva', 5, NULL, '#taskid=25', 'a:2:{i:0;s:36:\"RM\'s Event/Webinar Management System\";i:1;s:7:\"Testing\";}'),
(67, 0, 0, '2020-06-08 08:59:37', 'not_task_status_changed', 2, 0, 'Igor Silva', 5, NULL, '#taskid=26', 'a:2:{i:0;s:57:\"System integration with WooCommerce and a Payment Gateway\";i:1;s:7:\"Testing\";}'),
(68, 0, 0, '2020-06-08 08:59:57', 'not_task_status_changed', 2, 0, 'Igor Silva', 5, NULL, '#taskid=27', 'a:2:{i:0;s:47:\"Integration with Zoom  Webinar 3rd party System\";i:1;s:7:\"Testing\";}'),
(69, 0, 0, '2020-06-08 09:00:07', 'not_task_status_changed', 2, 0, 'Igor Silva', 5, NULL, '#taskid=28', 'a:2:{i:0;s:72:\"Front-end / Back-end test of settings, features and registration process\";i:1;s:7:\"Testing\";}'),
(70, 0, 0, '2020-06-08 09:00:36', 'not_task_status_changed', 2, 0, 'Igor Silva', 6, NULL, '#taskid=33', 'a:2:{i:0;s:41:\"Prepare all email notifications (CONTENT)\";i:1;s:11:\"In Progress\";}'),
(71, 0, 0, '2020-06-08 14:42:31', 'not_task_marked_as_complete', 2, 0, 'Igor Silva', 3, NULL, '#taskid=22', 'a:1:{i:0;s:40:\"Prepare Page Layout Banners and graphics\";}'),
(72, 1, 0, '2020-06-15 13:38:01', 'not_task_status_changed', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=4', 'a:2:{i:0;s:12:\"Profiles 1.1\";i:1;s:17:\"Awaiting Feedback\";}'),
(73, 1, 0, '2020-06-15 13:38:03', 'not_task_status_changed', 1, 0, 'Andrew Gordon', 4, NULL, '#taskid=4', 'a:2:{i:0;s:12:\"Profiles 1.1\";i:1;s:17:\"Awaiting Feedback\";}'),
(74, 1, 0, '2020-06-15 13:38:47', 'not_task_marked_as_complete', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=4', 'a:1:{i:0;s:12:\"Profiles 1.1\";}'),
(75, 1, 0, '2020-06-15 13:38:48', 'not_task_marked_as_complete', 1, 0, 'Andrew Gordon', 4, NULL, '#taskid=4', 'a:1:{i:0;s:12:\"Profiles 1.1\";}'),
(76, 1, 0, '2020-06-18 14:34:56', 'not_invoice_payment_recorded', 0, 0, '', 1, 1, 'invoices/list_invoices/10', 'a:1:{i:0;s:15:\"AIR-INV-0078-20\";}'),
(77, 1, 0, '2020-06-18 14:36:23', 'not_invoice_payment_recorded', 0, 0, '', 1, 1, 'invoices/list_invoices/7', 'a:1:{i:0;s:15:\"AIR-INV-0075-20\";}'),
(78, 0, 0, '2020-06-29 21:56:51', 'not_task_marked_as_complete', 2, 0, 'Igor Silva', 5, NULL, '#taskid=26', 'a:1:{i:0;s:57:\"System integration with WooCommerce and a Payment Gateway\";}'),
(79, 1, 1, '2020-07-06 11:26:21', 'not_customer_viewed_invoice', 0, 0, '', 1, 1, 'invoices/list_invoices/9', 'a:1:{i:0;s:15:\"AIR-INV-0077-20\";}'),
(80, 0, 0, '2020-07-17 15:29:08', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 6, NULL, 'projects/view/5', 'a:1:{i:0;s:44:\"Webinar - Email Rebranding Emergency Project\";}'),
(81, 0, 0, '2020-07-28 00:06:44', 'not_task_marked_as_complete', 2, 0, 'Igor Silva', 5, NULL, '#taskid=27', 'a:1:{i:0;s:47:\"Integration with Zoom  Webinar 3rd party System\";}'),
(82, 0, 0, '2020-07-28 00:06:49', 'not_task_marked_as_complete', 2, 0, 'Igor Silva', 5, NULL, '#taskid=28', 'a:1:{i:0;s:72:\"Front-end / Back-end test of settings, features and registration process\";}'),
(83, 0, 0, '2020-07-28 00:07:10', 'not_task_marked_as_complete', 2, 0, 'Igor Silva', 5, NULL, '#taskid=25', 'a:1:{i:0;s:36:\"RM\'s Event/Webinar Management System\";}'),
(84, 0, 0, '2020-07-28 00:09:25', 'not_task_marked_as_complete', 2, 0, 'Igor Silva', 6, NULL, '#taskid=33', 'a:1:{i:0;s:41:\"Prepare all email notifications (CONTENT)\";}'),
(85, 1, 0, '2020-07-28 12:14:12', 'not_task_added_himself_as_follower', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=51', 'a:1:{i:0;s:22:\"Webinar ads rebranding\";}'),
(86, 0, 0, '2020-08-01 16:39:00', 'not_project_status_updated', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/5', 'a:2:{i:0;s:29:\"<lang>project_status_2</lang>\";i:1;s:29:\"<lang>project_status_4</lang>\";}'),
(87, 0, 0, '2020-08-06 16:19:08', 'not_task_added_you_as_follower', 1, 0, 'Andrew Gordon', 6, NULL, '#taskid=52', 'a:1:{i:0;s:15:\"EBLAST: Palmeri\";}'),
(88, 0, 0, '2020-08-10 22:55:17', 'not_task_unmarked_as_complete', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=4', 'a:1:{i:0;s:12:\"Profiles 1.1\";}'),
(89, 1, 0, '2020-08-10 22:55:19', 'not_task_unmarked_as_complete', 1, 0, 'Andrew Gordon', 4, NULL, '#taskid=4', 'a:1:{i:0;s:12:\"Profiles 1.1\";}'),
(90, 0, 0, '2020-08-15 22:42:35', 'not_task_marked_as_complete', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=51', 'a:1:{i:0;s:22:\"Webinar ads rebranding\";}'),
(91, 0, 0, '2020-08-15 22:44:03', 'not_task_marked_as_complete', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=50', 'a:1:{i:0;s:17:\"Webinar Ads Admin\";}'),
(92, 0, 0, '2020-08-15 22:44:42', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/6', 'a:1:{i:0;s:22:\"RM Webinar Advertising\";}'),
(93, 0, 0, '2020-08-23 23:22:00', 'not_task_assigned_to_you', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=58', 'a:1:{i:0;s:8:\"Meetings\";}'),
(94, 0, 0, '2020-08-23 23:22:04', 'not_task_will_do_user', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=58', 'a:1:{i:0;s:8:\"Meetings\";}'),
(95, 0, 0, '2020-08-23 23:28:55', 'not_task_assigned_to_you', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=59', 'a:1:{i:0;s:11:\"Pre Meeting\";}'),
(96, 0, 0, '2020-08-23 23:33:11', 'not_task_assigned_to_you', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=60', 'a:1:{i:0;s:18:\"Seminar Management\";}'),
(97, 0, 0, '2020-08-23 23:35:06', 'not_task_marked_as_complete', 1, 0, 'Andrew Gordon', 2, NULL, '#taskid=60', 'a:1:{i:0;s:18:\"Seminar Management\";}'),
(98, 0, 0, '2020-08-24 00:02:52', 'not_staff_added_as_project_member', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/7', 'a:1:{i:0;s:22:\"Entertainment Job Bank\";}'),
(99, 0, 0, '2020-08-24 00:06:54', 'not_created_new_project_discussion', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/7?group=project_discussions&discussion_id=1', NULL),
(100, 0, 0, '2020-08-24 00:07:03', 'not_created_new_project_discussion', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/7?group=project_discussions&discussion_id=2', NULL),
(101, 0, 0, '2020-08-24 00:08:07', 'not_commented_on_project_discussion', 1, 0, 'Andrew Gordon', 2, NULL, 'projects/view/7?group=project_discussions&discussion_id=1', NULL),
(102, 1, 1, '2020-08-31 22:19:31', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=1', 'a:1:{i:0;s:23:\"Meeting: Reverse Margin\";}'),
(103, 0, 0, '2020-08-31 22:19:32', 'not_event_public', 0, 0, '', 6, 1, 'utilities/calendar?eventid=1', 'a:1:{i:0;s:23:\"Meeting: Reverse Margin\";}'),
(104, 0, 0, '2020-08-31 22:19:33', 'not_event_public', 0, 0, '', 2, 1, 'utilities/calendar?eventid=1', 'a:1:{i:0;s:23:\"Meeting: Reverse Margin\";}'),
(105, 1, 0, '2020-08-31 22:19:33', 'not_event_public', 0, 0, '', 4, 1, 'utilities/calendar?eventid=1', 'a:1:{i:0;s:23:\"Meeting: Reverse Margin\";}'),
(106, 0, 0, '2020-08-31 22:19:34', 'not_task_deadline_reminder', 0, 0, '', 2, 1, '#taskid=61', 'a:1:{i:0;s:58:\"Setup protected video hosting for customer\'s 90 day access\";}'),
(107, 1, 0, '2020-09-03 13:59:15', 'notify_send_create_password', 1, 0, 'Andrew Gordon', 7, NULL, 'team_password/view_normal/1', 'a:1:{i:0;s:8:\"SHORT.IO\";}'),
(108, 0, 0, '2020-09-03 13:59:15', 'notify_send_create_password', 1, 0, 'Andrew Gordon', 2, NULL, 'team_password/view_normal/1', 'a:1:{i:0;s:8:\"SHORT.IO\";}'),
(109, 1, 0, '2020-09-03 13:59:15', 'notify_send_create_password', 1, 0, 'Andrew Gordon', 4, NULL, 'team_password/view_normal/1', 'a:1:{i:0;s:8:\"SHORT.IO\";}'),
(110, 1, 0, '2020-09-03 13:59:15', 'notify_send_create_password', 1, 0, 'Andrew Gordon', 1, NULL, 'team_password/view_normal/1', 'a:1:{i:0;s:8:\"SHORT.IO\";}'),
(111, 1, 0, '2020-09-03 14:05:29', 'notify_send_create_password', 1, 0, 'Andrew Gordon', 7, NULL, 'team_password/view_email/1', 'a:1:{i:0;s:21:\"Reverse Margin Master\";}'),
(112, 0, 0, '2020-09-03 14:05:29', 'notify_send_create_password', 1, 0, 'Andrew Gordon', 2, NULL, 'team_password/view_email/1', 'a:1:{i:0;s:21:\"Reverse Margin Master\";}'),
(113, 1, 0, '2020-09-03 14:05:29', 'notify_send_create_password', 1, 0, 'Andrew Gordon', 4, NULL, 'team_password/view_email/1', 'a:1:{i:0;s:21:\"Reverse Margin Master\";}'),
(114, 1, 0, '2020-09-03 14:05:29', 'notify_send_create_password', 1, 0, 'Andrew Gordon', 1, NULL, 'team_password/view_email/1', 'a:1:{i:0;s:21:\"Reverse Margin Master\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs`
--

DROP TABLE IF EXISTS `tblokrs`;
CREATE TABLE IF NOT EXISTS `tblokrs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `circulation` int(11) NOT NULL,
  `okr_superior` text DEFAULT NULL,
  `your_target` varchar(250) NOT NULL,
  `okr_cross` text DEFAULT NULL,
  `display` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `datecreator` datetime NOT NULL,
  `change` int(11) NOT NULL DEFAULT 0,
  `person_assigned` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `progress` decimal(5,2) DEFAULT NULL,
  `recently_checkin` date DEFAULT NULL,
  `upcoming_checkin` date DEFAULT NULL,
  `confidence_level` int(11) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_checkin`
--

DROP TABLE IF EXISTS `tblokrs_checkin`;
CREATE TABLE IF NOT EXISTS `tblokrs_checkin` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `okrs_id` int(11) NOT NULL,
  `main_results` text NOT NULL,
  `target` text NOT NULL,
  `achieved` text NOT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `confidence_level` int(11) NOT NULL DEFAULT 1,
  `unit` text NOT NULL,
  `answer` text NOT NULL,
  `evaluation_criteria` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `recently_checkin` date DEFAULT NULL,
  `upcoming_checkin` date DEFAULT NULL,
  `editor` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `key_results_id` int(11) NOT NULL,
  `complete_okrs` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_checkin_log`
--

DROP TABLE IF EXISTS `tblokrs_checkin_log`;
CREATE TABLE IF NOT EXISTS `tblokrs_checkin_log` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `okrs_id` int(11) NOT NULL,
  `main_results` text NOT NULL,
  `key_results_id` int(11) NOT NULL,
  `target` text NOT NULL,
  `achieved` text NOT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `confidence_level` int(11) NOT NULL DEFAULT 1,
  `unit` text NOT NULL,
  `answer` text NOT NULL,
  `evaluation_criteria` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `recently_checkin` date DEFAULT NULL,
  `upcoming_checkin` date DEFAULT NULL,
  `editor` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `progress_total` decimal(5,2) DEFAULT NULL,
  `complete_okrs` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_key_result`
--

DROP TABLE IF EXISTS `tblokrs_key_result`;
CREATE TABLE IF NOT EXISTS `tblokrs_key_result` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `okrs_id` int(11) NOT NULL,
  `main_results` text NOT NULL,
  `target` text NOT NULL,
  `plan` text NOT NULL,
  `results` text NOT NULL,
  `unit` text NOT NULL,
  `datecreator` datetime NOT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `achieved` text DEFAULT NULL,
  `confidence_level` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_key_result_log`
--

DROP TABLE IF EXISTS `tblokrs_key_result_log`;
CREATE TABLE IF NOT EXISTS `tblokrs_key_result_log` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `okrs_id` int(11) NOT NULL,
  `main_results` text NOT NULL,
  `target` text NOT NULL,
  `plan` text NOT NULL,
  `results` text NOT NULL,
  `unit` text NOT NULL,
  `editor` int(11) NOT NULL,
  `date_edit` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `achieved` decimal(5,2) DEFAULT NULL,
  `confidence_level` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_log`
--

DROP TABLE IF EXISTS `tblokrs_log`;
CREATE TABLE IF NOT EXISTS `tblokrs_log` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `circulation` int(11) NOT NULL,
  `okr_superior` text DEFAULT NULL,
  `your_target` varchar(250) NOT NULL,
  `okr_cross` text DEFAULT NULL,
  `display` int(11) DEFAULT NULL,
  `editor` int(11) NOT NULL,
  `date_edit` datetime NOT NULL,
  `change` int(11) NOT NULL DEFAULT 0,
  `person_assigned` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_circulation`
--

DROP TABLE IF EXISTS `tblokr_setting_circulation`;
CREATE TABLE IF NOT EXISTS `tblokr_setting_circulation` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_circulation` varchar(150) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokr_setting_circulation`
--

INSERT INTO `tblokr_setting_circulation` (`id`, `name_circulation`, `from_date`, `to_date`) VALUES
(1, 'Q1', '2020-01-01', '2020-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_evaluation_criteria`
--

DROP TABLE IF EXISTS `tblokr_setting_evaluation_criteria`;
CREATE TABLE IF NOT EXISTS `tblokr_setting_evaluation_criteria` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_criteria` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `scores` int(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_question`
--

DROP TABLE IF EXISTS `tblokr_setting_question`;
CREATE TABLE IF NOT EXISTS `tblokr_setting_question` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_unit`
--

DROP TABLE IF EXISTS `tblokr_setting_unit`;
CREATE TABLE IF NOT EXISTS `tblokr_setting_unit` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unit` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblopportunities`
--

DROP TABLE IF EXISTS `tblopportunities`;
CREATE TABLE IF NOT EXISTS `tblopportunities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `account` int(11) NOT NULL,
  `contacts` varchar(100) NOT NULL,
  `owner` int(11) NOT NULL,
  `probability` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `closed_status` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `projected_sale_date` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblopportunities`
--

INSERT INTO `tblopportunities` (`id`, `project_name`, `account`, `contacts`, `owner`, `probability`, `status`, `closed_status`, `delivery_date`, `projected_sale_date`, `datecreated`) VALUES
(1, 'TEST 123', 2, '4,5', 1, 50, 3, 0, '2020-08-31', '2020-07-31', '2020-06-30 17:49:10'),
(2, 'Cruise Ship 2222', 2, '4,5', 1, 50, 2, 0, '2020-10-31', '2020-07-31', '2020-07-02 10:33:37'),
(3, 'CRM Invoice Module', 3, '7', 1, 100, 3, 0, '2020-08-14', '2020-08-14', '2020-08-14 09:41:34'),
(4, 'Multi Sales Channel ERP', 4, '8', 1, 30, 1, 0, '2020-08-23', '2020-08-23', '2020-08-23 23:10:59'),
(5, 'Test1', 2, '4,5', 4, 20, 1, 0, '2020-09-15', '2020-09-15', '2020-09-15 13:36:34'),
(6, 'TestOppo', 3, '7', 4, 80, 3, 0, '2020-09-18', '2020-09-18', '2020-09-18 09:37:20'),
(7, 'fsdfdsffdsfds', 1, '2,3', 4, 60, 2, 0, '2020-09-18', '2020-09-18', '2020-09-18 09:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbloptions`
--

DROP TABLE IF EXISTS `tbloptions`;
CREATE TABLE IF NOT EXISTS `tbloptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbloptions`
--

INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'dateformat', 'Y-m-d|%Y-%m-%d', 1),
(2, 'companyname', 'LGHT Inc.', 1),
(3, 'services', '1', 1),
(4, 'maximum_allowed_ticket_attachments', '4', 1),
(5, 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc,.zip,.rar', 1),
(6, 'staff_access_only_assigned_departments', '0', 1),
(7, 'use_knowledge_base', '0', 1),
(8, 'smtp_email', 'NOREPLY@air-media.ca', 1),
(9, 'smtp_password', '4f40929f793785684a80e9c9c244b04979741bdc4b51ac8a7c6bca083155476f2abd8a1a06b8ac10c54459fa29b9cea7262f654b297334e9af07c43efaeb1481y5zgQ7xC3O6jtA9wtryc7ywT08wym7SuFcRXut5EDPB/HmDV8GrDHic0laqHsRP6f38YAOEiQxt50BacmmNdqJwI9pfnT/+Pe9qrdWvg3a5xB/lIqFLwm5TgQLaL3Lc/', 1),
(10, 'company_info_format', '{company_name}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(11, 'smtp_port', '465', 1),
(12, 'smtp_host', 'smtp.sendgrid.net', 1),
(13, 'smtp_email_charset', 'utf-8', 1),
(14, 'default_timezone', 'America/Toronto', 1),
(15, 'clients_default_theme', 'perfex', 1),
(16, 'company_logo', 'logo.png', 1),
(17, 'tables_pagination_limit', '25', 1),
(18, 'main_domain', 'www.lght.co', 1),
(19, 'allow_registration', '0', 1),
(20, 'knowledge_base_without_registration', '0', 1),
(21, 'email_signature', 'Sincerely, <br />\r\n<br />\r\nThe AIR Team', 1),
(22, 'default_staff_role', '1', 1),
(23, 'newsfeed_maximum_files_upload', '10', 1),
(24, 'contract_expiration_before', '4', 1),
(25, 'invoice_prefix', 'INV-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'invoice_company_name', 'Lght Inc.', 1),
(29, 'invoice_company_address', '255 Richmond Street East', 1),
(30, 'invoice_company_city', 'Toronto', 1),
(31, 'invoice_company_country_code', 'Canada', 1),
(32, 'invoice_company_postal_code', 'M5A 4T7', 1),
(33, 'invoice_company_phonenumber', '', 1),
(34, 'view_invoice_only_logged_in', '0', 1),
(35, 'invoice_number_format', '3', 1),
(36, 'next_invoice_number', '123', 0),
(37, 'active_language', 'english', 1),
(38, 'invoice_number_decrement_on_delete', '1', 1),
(39, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
(40, 'automatically_resend_invoice_overdue_reminder_after', '7', 1),
(41, 'expenses_auto_operations_hour', '21', 1),
(42, 'delete_only_on_last_invoice', '0', 1),
(43, 'delete_only_on_last_estimate', '0', 1),
(44, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(45, 'allow_payment_amount_to_be_modified', '1', 1),
(46, 'rtl_support_client', '0', 1),
(47, 'limit_top_search_bar_results_to', '10', 1),
(48, 'estimate_prefix', 'AIR-EST-', 1),
(49, 'next_estimate_number', '154', 0),
(50, 'estimate_number_decrement_on_delete', '1', 1),
(51, 'estimate_number_format', '3', 1),
(52, 'estimate_auto_convert_to_invoice_on_client_accept', '1', 1),
(53, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
(54, 'rtl_support_admin', '0', 1),
(55, 'last_cron_run', '1603106654', 1),
(56, 'show_sale_agent_on_estimates', '1', 1),
(57, 'show_sale_agent_on_invoices', '1', 1),
(58, 'predefined_terms_invoice', '', 1),
(59, 'predefined_terms_estimate', '', 1),
(60, 'default_task_priority', '2', 1),
(61, 'dropbox_app_key', '', 1),
(62, 'show_expense_reminders_on_calendar', '1', 1),
(63, 'only_show_contact_tickets', '1', 1),
(64, 'predefined_clientnote_invoice', '', 1),
(65, 'predefined_clientnote_estimate', '', 1),
(66, 'custom_pdf_logo_image_url', '', 1),
(67, 'favicon', '', 1),
(68, 'invoice_due_after', '30', 1),
(69, 'google_api_key', '', 1),
(70, 'google_calendar_main_calendar', '', 1),
(71, 'default_tax', 'a:0:{}', 1),
(72, 'show_invoices_on_calendar', '1', 1),
(73, 'show_estimates_on_calendar', '1', 1),
(74, 'show_contracts_on_calendar', '1', 1),
(75, 'show_tasks_on_calendar', '1', 1),
(76, 'show_customer_reminders_on_calendar', '1', 1),
(77, 'output_client_pdfs_from_admin_area_in_client_language', '0', 1),
(78, 'show_lead_reminders_on_calendar', '1', 1),
(79, 'send_estimate_expiry_reminder_before', '4', 1),
(80, 'leads_default_source', '', 1),
(81, 'leads_default_status', '', 1),
(82, 'proposal_expiry_reminder_enabled', '1', 1),
(83, 'send_proposal_expiry_reminder_before', '4', 1),
(84, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(85, 'pdf_logo_width', '150', 1),
(86, 'access_tickets_to_none_staff_members', '0', 1),
(87, 'customer_default_country', '', 1),
(88, 'view_estimate_only_logged_in', '0', 1),
(89, 'show_status_on_pdf_ei', '1', 1),
(90, 'email_piping_only_replies', '0', 1),
(91, 'email_piping_only_registered', '0', 1),
(92, 'default_view_calendar', 'month', 1),
(93, 'email_piping_default_priority', '2', 1),
(94, 'total_to_words_lowercase', '0', 1),
(95, 'show_tax_per_item', '0', 1),
(96, 'total_to_words_enabled', '0', 1),
(97, 'receive_notification_on_new_ticket', '1', 0),
(98, 'autoclose_tickets_after', '168', 1),
(99, 'media_max_file_size_upload', '10', 1),
(100, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
(101, 'show_projects_on_calendar', '1', 1),
(102, 'leads_kanban_limit', '50', 1),
(103, 'tasks_reminder_notification_before', '2', 1),
(104, 'pdf_font', 'freesans', 1),
(105, 'pdf_table_heading_color', '#323a45', 1),
(106, 'pdf_table_heading_text_color', '#ffffff', 1),
(107, 'pdf_font_size', '10', 1),
(108, 'default_leads_kanban_sort', 'leadorder', 1),
(109, 'default_leads_kanban_sort_type', 'asc', 1),
(110, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt,.ai,.mov,.mp4,.mpeg4', 1),
(111, 'show_all_tasks_for_project_member', '1', 1),
(112, 'email_protocol', 'smtp', 1),
(113, 'calendar_first_day', '0', 1),
(114, 'recaptcha_secret_key', '', 1),
(115, 'show_help_on_setup_menu', '1', 1),
(116, 'show_proposals_on_calendar', '1', 1),
(117, 'smtp_encryption', 'ssl', 1),
(118, 'recaptcha_site_key', '', 1),
(119, 'smtp_username', 'apikey', 1),
(120, 'auto_stop_tasks_timers_on_new_timer', '1', 1),
(121, 'notification_when_customer_pay_invoice', '1', 1),
(122, 'calendar_invoice_color', '#FF6F00', 1),
(123, 'calendar_estimate_color', '#FF6F00', 1),
(124, 'calendar_proposal_color', '#84c529', 1),
(125, 'new_task_auto_assign_current_member', '1', 1),
(126, 'calendar_reminder_color', '#03A9F4', 1),
(127, 'calendar_contract_color', '#B72974', 1),
(128, 'calendar_project_color', '#B72974', 1),
(129, 'update_info_message', '', 1),
(130, 'show_estimate_reminders_on_calendar', '1', 1),
(131, 'show_invoice_reminders_on_calendar', '1', 1),
(132, 'show_proposal_reminders_on_calendar', '1', 1),
(133, 'proposal_due_after', '7', 1),
(134, 'allow_customer_to_change_ticket_status', '0', 1),
(135, 'lead_lock_after_convert_to_customer', '0', 1),
(136, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
(137, 'default_proposals_pipeline_sort_type', 'asc', 1),
(138, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
(139, 'default_estimates_pipeline_sort_type', 'asc', 1),
(140, 'use_recaptcha_customers_area', '0', 1),
(141, 'remove_decimals_on_zero', '0', 1),
(142, 'remove_tax_name_from_item_table', '0', 1),
(143, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(144, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(145, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(146, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(147, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(148, 'swap_pdf_info', '0', 1),
(149, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
(150, 'cron_has_run_from_cli', '1', 1),
(151, 'hide_cron_is_required_message', '1', 0),
(152, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
(153, 'show_transactions_on_invoice_pdf', '1', 1),
(154, 'show_pay_link_to_invoice_pdf', '1', 1),
(155, 'tasks_kanban_limit', '50', 1),
(156, 'purchase_key', '', 1),
(157, 'estimates_pipeline_limit', '50', 1),
(158, 'proposals_pipeline_limit', '50', 1),
(159, 'proposal_number_prefix', 'PRO-', 1),
(160, 'number_padding_prefixes', '4', 1),
(161, 'show_page_number_on_pdf', '0', 1),
(162, 'calendar_events_limit', '4', 1),
(163, 'show_setup_menu_item_only_on_hover', '0', 1),
(164, 'company_requires_vat_number_field', '1', 1),
(165, 'company_is_required', '1', 1),
(166, 'allow_contact_to_delete_files', '0', 1),
(167, 'company_vat', '', 1),
(168, 'di', '1587181119', 1),
(169, 'invoice_auto_operations_hour', '23', 1),
(170, 'use_minified_files', '1', 1),
(171, 'only_own_files_contacts', '0', 1),
(172, 'allow_primary_contact_to_view_edit_billing_and_shipping', '1', 1),
(173, 'estimate_due_after', '14', 1),
(174, 'staff_members_open_tickets_to_all_contacts', '1', 1),
(175, 'time_format', '24', 1),
(176, 'delete_activity_log_older_then', '1', 1),
(177, 'disable_language', '0', 1),
(178, 'company_state', 'Ontario', 1),
(179, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>', 1),
(180, 'show_pdf_signature_invoice', '1', 0),
(181, 'show_pdf_signature_estimate', '1', 0),
(182, 'signature_image', '', 0),
(183, 'scroll_responsive_tables', '0', 1),
(184, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
(185, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
(186, 'pusher_app_key', '', 1),
(187, 'pusher_app_secret', '', 1),
(188, 'pusher_app_id', '', 1),
(189, 'pusher_realtime_notifications', '0', 1),
(190, 'pdf_format_statement', 'A4-PORTRAIT', 1),
(191, 'pusher_cluster', '', 1),
(192, 'show_table_export_button', 'to_all', 1),
(193, 'allow_staff_view_proposals_assigned', '1', 1),
(194, 'show_cloudflare_notice', '1', 0),
(195, 'task_modal_class', 'modal-lg', 1),
(196, 'lead_modal_class', 'modal-lg', 1),
(197, 'show_timesheets_overview_all_members_notice_admins', '1', 0),
(198, 'desktop_notifications', '0', 1),
(199, 'hide_notified_reminders_from_calendar', '1', 0),
(200, 'customer_info_format', '{company_name}<br />\r\n{street}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(201, 'timer_started_change_status_in_progress', '1', 0),
(202, 'default_ticket_reply_status', '3', 1),
(203, 'default_task_status', 'auto', 1),
(204, 'email_queue_skip_with_attachments', '1', 1),
(205, 'email_queue_enabled', '0', 1),
(206, 'last_email_queue_retry', '1603106185', 1),
(207, 'auto_dismiss_desktop_notifications_after', '0', 1),
(208, 'proposal_info_format', '{proposal_to}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{phone}<br />\r\n{email}', 0),
(209, 'ticket_replies_order', 'asc', 1),
(210, 'new_recurring_invoice_action', 'generate_and_send', 0),
(211, 'bcc_emails', '', 0);
INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(212, 'email_templates_language_checks', 'a:1747:{s:28:\"new-client-created-bulgarian\";i:1;s:32:\"invoice-send-to-client-bulgarian\";i:1;s:33:\"new-ticket-opened-admin-bulgarian\";i:1;s:22:\"ticket-reply-bulgarian\";i:1;s:29:\"ticket-autoresponse-bulgarian\";i:1;s:34:\"invoice-payment-recorded-bulgarian\";i:1;s:32:\"invoice-overdue-notice-bulgarian\";i:1;s:30:\"invoice-already-send-bulgarian\";i:1;s:34:\"new-ticket-created-staff-bulgarian\";i:1;s:33:\"estimate-send-to-client-bulgarian\";i:1;s:31:\"ticket-reply-to-admin-bulgarian\";i:1;s:31:\"estimate-already-send-bulgarian\";i:1;s:29:\"contract-expiration-bulgarian\";i:1;s:23:\"task-assigned-bulgarian\";i:1;s:32:\"task-added-as-follower-bulgarian\";i:1;s:24:\"task-commented-bulgarian\";i:1;s:31:\"task-added-attachment-bulgarian\";i:1;s:36:\"estimate-declined-to-staff-bulgarian\";i:1;s:36:\"estimate-accepted-to-staff-bulgarian\";i:1;s:34:\"proposal-client-accepted-bulgarian\";i:1;s:35:\"proposal-send-to-customer-bulgarian\";i:1;s:34:\"proposal-client-declined-bulgarian\";i:1;s:35:\"proposal-client-thank-you-bulgarian\";i:1;s:36:\"proposal-comment-to-client-bulgarian\";i:1;s:35:\"proposal-comment-to-admin-bulgarian\";i:1;s:40:\"estimate-thank-you-to-customer-bulgarian\";i:1;s:36:\"task-deadline-notification-bulgarian\";i:1;s:23:\"send-contract-bulgarian\";i:1;s:43:\"invoice-payment-recorded-to-staff-bulgarian\";i:1;s:27:\"auto-close-ticket-bulgarian\";i:1;s:49:\"new-project-discussion-created-to-staff-bulgarian\";i:1;s:52:\"new-project-discussion-created-to-customer-bulgarian\";i:1;s:47:\"new-project-file-uploaded-to-customer-bulgarian\";i:1;s:44:\"new-project-file-uploaded-to-staff-bulgarian\";i:1;s:52:\"new-project-discussion-comment-to-customer-bulgarian\";i:1;s:49:\"new-project-discussion-comment-to-staff-bulgarian\";i:1;s:39:\"staff-added-as-project-member-bulgarian\";i:1;s:34:\"estimate-expiry-reminder-bulgarian\";i:1;s:34:\"proposal-expiry-reminder-bulgarian\";i:1;s:27:\"new-staff-created-bulgarian\";i:1;s:33:\"contact-forgot-password-bulgarian\";i:1;s:34:\"contact-password-reseted-bulgarian\";i:1;s:30:\"contact-set-password-bulgarian\";i:1;s:31:\"staff-forgot-password-bulgarian\";i:1;s:32:\"staff-password-reseted-bulgarian\";i:1;s:29:\"assigned-to-project-bulgarian\";i:1;s:43:\"task-added-attachment-to-contacts-bulgarian\";i:1;s:36:\"task-commented-to-contacts-bulgarian\";i:1;s:27:\"new-lead-assigned-bulgarian\";i:1;s:26:\"client-statement-bulgarian\";i:1;s:34:\"ticket-assigned-to-admin-bulgarian\";i:1;s:40:\"new-client-registered-to-admin-bulgarian\";i:1;s:40:\"new-web-to-lead-form-submitted-bulgarian\";i:1;s:35:\"two-factor-authentication-bulgarian\";i:1;s:38:\"project-finished-to-customer-bulgarian\";i:1;s:36:\"credit-note-send-to-client-bulgarian\";i:1;s:37:\"task-status-change-to-staff-bulgarian\";i:1;s:40:\"task-status-change-to-contacts-bulgarian\";i:1;s:30:\"reminder-email-staff-bulgarian\";i:1;s:36:\"contract-comment-to-client-bulgarian\";i:1;s:35:\"contract-comment-to-admin-bulgarian\";i:1;s:27:\"send-subscription-bulgarian\";i:1;s:37:\"subscription-payment-failed-bulgarian\";i:1;s:31:\"subscription-canceled-bulgarian\";i:1;s:40:\"subscription-payment-succeeded-bulgarian\";i:1;s:38:\"contract-expiration-to-staff-bulgarian\";i:1;s:30:\"gdpr-removal-request-bulgarian\";i:1;s:35:\"gdpr-removal-request-lead-bulgarian\";i:1;s:39:\"client-registration-confirmed-bulgarian\";i:1;s:34:\"contract-signed-to-staff-bulgarian\";i:1;s:38:\"customer-subscribed-to-staff-bulgarian\";i:1;s:36:\"contact-verification-email-bulgarian\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-bulgarian\";i:1;s:37:\"event-notification-to-staff-bulgarian\";i:1;s:46:\"subscription-payment-requires-action-bulgarian\";i:1;s:24:\"new-client-created-dutch\";i:1;s:28:\"invoice-send-to-client-dutch\";i:1;s:29:\"new-ticket-opened-admin-dutch\";i:1;s:18:\"ticket-reply-dutch\";i:1;s:25:\"ticket-autoresponse-dutch\";i:1;s:30:\"invoice-payment-recorded-dutch\";i:1;s:28:\"invoice-overdue-notice-dutch\";i:1;s:26:\"invoice-already-send-dutch\";i:1;s:30:\"new-ticket-created-staff-dutch\";i:1;s:29:\"estimate-send-to-client-dutch\";i:1;s:27:\"ticket-reply-to-admin-dutch\";i:1;s:27:\"estimate-already-send-dutch\";i:1;s:25:\"contract-expiration-dutch\";i:1;s:19:\"task-assigned-dutch\";i:1;s:28:\"task-added-as-follower-dutch\";i:1;s:20:\"task-commented-dutch\";i:1;s:27:\"task-added-attachment-dutch\";i:1;s:32:\"estimate-declined-to-staff-dutch\";i:1;s:32:\"estimate-accepted-to-staff-dutch\";i:1;s:30:\"proposal-client-accepted-dutch\";i:1;s:31:\"proposal-send-to-customer-dutch\";i:1;s:30:\"proposal-client-declined-dutch\";i:1;s:31:\"proposal-client-thank-you-dutch\";i:1;s:32:\"proposal-comment-to-client-dutch\";i:1;s:31:\"proposal-comment-to-admin-dutch\";i:1;s:36:\"estimate-thank-you-to-customer-dutch\";i:1;s:32:\"task-deadline-notification-dutch\";i:1;s:19:\"send-contract-dutch\";i:1;s:39:\"invoice-payment-recorded-to-staff-dutch\";i:1;s:23:\"auto-close-ticket-dutch\";i:1;s:45:\"new-project-discussion-created-to-staff-dutch\";i:1;s:48:\"new-project-discussion-created-to-customer-dutch\";i:1;s:43:\"new-project-file-uploaded-to-customer-dutch\";i:1;s:40:\"new-project-file-uploaded-to-staff-dutch\";i:1;s:48:\"new-project-discussion-comment-to-customer-dutch\";i:1;s:45:\"new-project-discussion-comment-to-staff-dutch\";i:1;s:35:\"staff-added-as-project-member-dutch\";i:1;s:30:\"estimate-expiry-reminder-dutch\";i:1;s:30:\"proposal-expiry-reminder-dutch\";i:1;s:23:\"new-staff-created-dutch\";i:1;s:29:\"contact-forgot-password-dutch\";i:1;s:30:\"contact-password-reseted-dutch\";i:1;s:26:\"contact-set-password-dutch\";i:1;s:27:\"staff-forgot-password-dutch\";i:1;s:28:\"staff-password-reseted-dutch\";i:1;s:25:\"assigned-to-project-dutch\";i:1;s:39:\"task-added-attachment-to-contacts-dutch\";i:1;s:32:\"task-commented-to-contacts-dutch\";i:1;s:23:\"new-lead-assigned-dutch\";i:1;s:22:\"client-statement-dutch\";i:1;s:30:\"ticket-assigned-to-admin-dutch\";i:1;s:36:\"new-client-registered-to-admin-dutch\";i:1;s:36:\"new-web-to-lead-form-submitted-dutch\";i:1;s:31:\"two-factor-authentication-dutch\";i:1;s:34:\"project-finished-to-customer-dutch\";i:1;s:32:\"credit-note-send-to-client-dutch\";i:1;s:33:\"task-status-change-to-staff-dutch\";i:1;s:36:\"task-status-change-to-contacts-dutch\";i:1;s:26:\"reminder-email-staff-dutch\";i:1;s:32:\"contract-comment-to-client-dutch\";i:1;s:31:\"contract-comment-to-admin-dutch\";i:1;s:23:\"send-subscription-dutch\";i:1;s:33:\"subscription-payment-failed-dutch\";i:1;s:27:\"subscription-canceled-dutch\";i:1;s:36:\"subscription-payment-succeeded-dutch\";i:1;s:34:\"contract-expiration-to-staff-dutch\";i:1;s:26:\"gdpr-removal-request-dutch\";i:1;s:31:\"gdpr-removal-request-lead-dutch\";i:1;s:35:\"client-registration-confirmed-dutch\";i:1;s:30:\"contract-signed-to-staff-dutch\";i:1;s:34:\"customer-subscribed-to-staff-dutch\";i:1;s:32:\"contact-verification-email-dutch\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-dutch\";i:1;s:33:\"event-notification-to-staff-dutch\";i:1;s:42:\"subscription-payment-requires-action-dutch\";i:1;s:24:\"new-client-created-czech\";i:1;s:28:\"invoice-send-to-client-czech\";i:1;s:29:\"new-ticket-opened-admin-czech\";i:1;s:18:\"ticket-reply-czech\";i:1;s:25:\"ticket-autoresponse-czech\";i:1;s:30:\"invoice-payment-recorded-czech\";i:1;s:28:\"invoice-overdue-notice-czech\";i:1;s:26:\"invoice-already-send-czech\";i:1;s:30:\"new-ticket-created-staff-czech\";i:1;s:29:\"estimate-send-to-client-czech\";i:1;s:27:\"ticket-reply-to-admin-czech\";i:1;s:27:\"estimate-already-send-czech\";i:1;s:25:\"contract-expiration-czech\";i:1;s:19:\"task-assigned-czech\";i:1;s:28:\"task-added-as-follower-czech\";i:1;s:20:\"task-commented-czech\";i:1;s:27:\"task-added-attachment-czech\";i:1;s:32:\"estimate-declined-to-staff-czech\";i:1;s:32:\"estimate-accepted-to-staff-czech\";i:1;s:30:\"proposal-client-accepted-czech\";i:1;s:31:\"proposal-send-to-customer-czech\";i:1;s:30:\"proposal-client-declined-czech\";i:1;s:31:\"proposal-client-thank-you-czech\";i:1;s:32:\"proposal-comment-to-client-czech\";i:1;s:31:\"proposal-comment-to-admin-czech\";i:1;s:36:\"estimate-thank-you-to-customer-czech\";i:1;s:32:\"task-deadline-notification-czech\";i:1;s:19:\"send-contract-czech\";i:1;s:39:\"invoice-payment-recorded-to-staff-czech\";i:1;s:23:\"auto-close-ticket-czech\";i:1;s:45:\"new-project-discussion-created-to-staff-czech\";i:1;s:48:\"new-project-discussion-created-to-customer-czech\";i:1;s:43:\"new-project-file-uploaded-to-customer-czech\";i:1;s:40:\"new-project-file-uploaded-to-staff-czech\";i:1;s:48:\"new-project-discussion-comment-to-customer-czech\";i:1;s:45:\"new-project-discussion-comment-to-staff-czech\";i:1;s:35:\"staff-added-as-project-member-czech\";i:1;s:30:\"estimate-expiry-reminder-czech\";i:1;s:30:\"proposal-expiry-reminder-czech\";i:1;s:23:\"new-staff-created-czech\";i:1;s:29:\"contact-forgot-password-czech\";i:1;s:30:\"contact-password-reseted-czech\";i:1;s:26:\"contact-set-password-czech\";i:1;s:27:\"staff-forgot-password-czech\";i:1;s:28:\"staff-password-reseted-czech\";i:1;s:25:\"assigned-to-project-czech\";i:1;s:39:\"task-added-attachment-to-contacts-czech\";i:1;s:32:\"task-commented-to-contacts-czech\";i:1;s:23:\"new-lead-assigned-czech\";i:1;s:22:\"client-statement-czech\";i:1;s:30:\"ticket-assigned-to-admin-czech\";i:1;s:36:\"new-client-registered-to-admin-czech\";i:1;s:36:\"new-web-to-lead-form-submitted-czech\";i:1;s:31:\"two-factor-authentication-czech\";i:1;s:34:\"project-finished-to-customer-czech\";i:1;s:32:\"credit-note-send-to-client-czech\";i:1;s:33:\"task-status-change-to-staff-czech\";i:1;s:36:\"task-status-change-to-contacts-czech\";i:1;s:26:\"reminder-email-staff-czech\";i:1;s:32:\"contract-comment-to-client-czech\";i:1;s:31:\"contract-comment-to-admin-czech\";i:1;s:23:\"send-subscription-czech\";i:1;s:33:\"subscription-payment-failed-czech\";i:1;s:27:\"subscription-canceled-czech\";i:1;s:36:\"subscription-payment-succeeded-czech\";i:1;s:34:\"contract-expiration-to-staff-czech\";i:1;s:26:\"gdpr-removal-request-czech\";i:1;s:31:\"gdpr-removal-request-lead-czech\";i:1;s:35:\"client-registration-confirmed-czech\";i:1;s:30:\"contract-signed-to-staff-czech\";i:1;s:34:\"customer-subscribed-to-staff-czech\";i:1;s:32:\"contact-verification-email-czech\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-czech\";i:1;s:33:\"event-notification-to-staff-czech\";i:1;s:42:\"subscription-payment-requires-action-czech\";i:1;s:26:\"new-client-created-catalan\";i:1;s:30:\"invoice-send-to-client-catalan\";i:1;s:31:\"new-ticket-opened-admin-catalan\";i:1;s:20:\"ticket-reply-catalan\";i:1;s:27:\"ticket-autoresponse-catalan\";i:1;s:32:\"invoice-payment-recorded-catalan\";i:1;s:30:\"invoice-overdue-notice-catalan\";i:1;s:28:\"invoice-already-send-catalan\";i:1;s:32:\"new-ticket-created-staff-catalan\";i:1;s:31:\"estimate-send-to-client-catalan\";i:1;s:29:\"ticket-reply-to-admin-catalan\";i:1;s:29:\"estimate-already-send-catalan\";i:1;s:27:\"contract-expiration-catalan\";i:1;s:21:\"task-assigned-catalan\";i:1;s:30:\"task-added-as-follower-catalan\";i:1;s:22:\"task-commented-catalan\";i:1;s:29:\"task-added-attachment-catalan\";i:1;s:34:\"estimate-declined-to-staff-catalan\";i:1;s:34:\"estimate-accepted-to-staff-catalan\";i:1;s:32:\"proposal-client-accepted-catalan\";i:1;s:33:\"proposal-send-to-customer-catalan\";i:1;s:32:\"proposal-client-declined-catalan\";i:1;s:33:\"proposal-client-thank-you-catalan\";i:1;s:34:\"proposal-comment-to-client-catalan\";i:1;s:33:\"proposal-comment-to-admin-catalan\";i:1;s:38:\"estimate-thank-you-to-customer-catalan\";i:1;s:34:\"task-deadline-notification-catalan\";i:1;s:21:\"send-contract-catalan\";i:1;s:41:\"invoice-payment-recorded-to-staff-catalan\";i:1;s:25:\"auto-close-ticket-catalan\";i:1;s:47:\"new-project-discussion-created-to-staff-catalan\";i:1;s:50:\"new-project-discussion-created-to-customer-catalan\";i:1;s:45:\"new-project-file-uploaded-to-customer-catalan\";i:1;s:42:\"new-project-file-uploaded-to-staff-catalan\";i:1;s:50:\"new-project-discussion-comment-to-customer-catalan\";i:1;s:47:\"new-project-discussion-comment-to-staff-catalan\";i:1;s:37:\"staff-added-as-project-member-catalan\";i:1;s:32:\"estimate-expiry-reminder-catalan\";i:1;s:32:\"proposal-expiry-reminder-catalan\";i:1;s:25:\"new-staff-created-catalan\";i:1;s:31:\"contact-forgot-password-catalan\";i:1;s:32:\"contact-password-reseted-catalan\";i:1;s:28:\"contact-set-password-catalan\";i:1;s:29:\"staff-forgot-password-catalan\";i:1;s:30:\"staff-password-reseted-catalan\";i:1;s:27:\"assigned-to-project-catalan\";i:1;s:41:\"task-added-attachment-to-contacts-catalan\";i:1;s:34:\"task-commented-to-contacts-catalan\";i:1;s:25:\"new-lead-assigned-catalan\";i:1;s:24:\"client-statement-catalan\";i:1;s:32:\"ticket-assigned-to-admin-catalan\";i:1;s:38:\"new-client-registered-to-admin-catalan\";i:1;s:38:\"new-web-to-lead-form-submitted-catalan\";i:1;s:33:\"two-factor-authentication-catalan\";i:1;s:36:\"project-finished-to-customer-catalan\";i:1;s:34:\"credit-note-send-to-client-catalan\";i:1;s:35:\"task-status-change-to-staff-catalan\";i:1;s:38:\"task-status-change-to-contacts-catalan\";i:1;s:28:\"reminder-email-staff-catalan\";i:1;s:34:\"contract-comment-to-client-catalan\";i:1;s:33:\"contract-comment-to-admin-catalan\";i:1;s:25:\"send-subscription-catalan\";i:1;s:35:\"subscription-payment-failed-catalan\";i:1;s:29:\"subscription-canceled-catalan\";i:1;s:38:\"subscription-payment-succeeded-catalan\";i:1;s:36:\"contract-expiration-to-staff-catalan\";i:1;s:28:\"gdpr-removal-request-catalan\";i:1;s:33:\"gdpr-removal-request-lead-catalan\";i:1;s:37:\"client-registration-confirmed-catalan\";i:1;s:32:\"contract-signed-to-staff-catalan\";i:1;s:36:\"customer-subscribed-to-staff-catalan\";i:1;s:34:\"contact-verification-email-catalan\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-catalan\";i:1;s:35:\"event-notification-to-staff-catalan\";i:1;s:44:\"subscription-payment-requires-action-catalan\";i:1;s:29:\"new-client-created-vietnamese\";i:1;s:33:\"invoice-send-to-client-vietnamese\";i:1;s:34:\"new-ticket-opened-admin-vietnamese\";i:1;s:23:\"ticket-reply-vietnamese\";i:1;s:30:\"ticket-autoresponse-vietnamese\";i:1;s:35:\"invoice-payment-recorded-vietnamese\";i:1;s:33:\"invoice-overdue-notice-vietnamese\";i:1;s:31:\"invoice-already-send-vietnamese\";i:1;s:35:\"new-ticket-created-staff-vietnamese\";i:1;s:34:\"estimate-send-to-client-vietnamese\";i:1;s:32:\"ticket-reply-to-admin-vietnamese\";i:1;s:32:\"estimate-already-send-vietnamese\";i:1;s:30:\"contract-expiration-vietnamese\";i:1;s:24:\"task-assigned-vietnamese\";i:1;s:33:\"task-added-as-follower-vietnamese\";i:1;s:25:\"task-commented-vietnamese\";i:1;s:32:\"task-added-attachment-vietnamese\";i:1;s:37:\"estimate-declined-to-staff-vietnamese\";i:1;s:37:\"estimate-accepted-to-staff-vietnamese\";i:1;s:35:\"proposal-client-accepted-vietnamese\";i:1;s:36:\"proposal-send-to-customer-vietnamese\";i:1;s:35:\"proposal-client-declined-vietnamese\";i:1;s:36:\"proposal-client-thank-you-vietnamese\";i:1;s:37:\"proposal-comment-to-client-vietnamese\";i:1;s:36:\"proposal-comment-to-admin-vietnamese\";i:1;s:41:\"estimate-thank-you-to-customer-vietnamese\";i:1;s:37:\"task-deadline-notification-vietnamese\";i:1;s:24:\"send-contract-vietnamese\";i:1;s:44:\"invoice-payment-recorded-to-staff-vietnamese\";i:1;s:28:\"auto-close-ticket-vietnamese\";i:1;s:50:\"new-project-discussion-created-to-staff-vietnamese\";i:1;s:53:\"new-project-discussion-created-to-customer-vietnamese\";i:1;s:48:\"new-project-file-uploaded-to-customer-vietnamese\";i:1;s:45:\"new-project-file-uploaded-to-staff-vietnamese\";i:1;s:53:\"new-project-discussion-comment-to-customer-vietnamese\";i:1;s:50:\"new-project-discussion-comment-to-staff-vietnamese\";i:1;s:40:\"staff-added-as-project-member-vietnamese\";i:1;s:35:\"estimate-expiry-reminder-vietnamese\";i:1;s:35:\"proposal-expiry-reminder-vietnamese\";i:1;s:28:\"new-staff-created-vietnamese\";i:1;s:34:\"contact-forgot-password-vietnamese\";i:1;s:35:\"contact-password-reseted-vietnamese\";i:1;s:31:\"contact-set-password-vietnamese\";i:1;s:32:\"staff-forgot-password-vietnamese\";i:1;s:33:\"staff-password-reseted-vietnamese\";i:1;s:30:\"assigned-to-project-vietnamese\";i:1;s:44:\"task-added-attachment-to-contacts-vietnamese\";i:1;s:37:\"task-commented-to-contacts-vietnamese\";i:1;s:28:\"new-lead-assigned-vietnamese\";i:1;s:27:\"client-statement-vietnamese\";i:1;s:35:\"ticket-assigned-to-admin-vietnamese\";i:1;s:41:\"new-client-registered-to-admin-vietnamese\";i:1;s:41:\"new-web-to-lead-form-submitted-vietnamese\";i:1;s:36:\"two-factor-authentication-vietnamese\";i:1;s:39:\"project-finished-to-customer-vietnamese\";i:1;s:37:\"credit-note-send-to-client-vietnamese\";i:1;s:38:\"task-status-change-to-staff-vietnamese\";i:1;s:41:\"task-status-change-to-contacts-vietnamese\";i:1;s:31:\"reminder-email-staff-vietnamese\";i:1;s:37:\"contract-comment-to-client-vietnamese\";i:1;s:36:\"contract-comment-to-admin-vietnamese\";i:1;s:28:\"send-subscription-vietnamese\";i:1;s:38:\"subscription-payment-failed-vietnamese\";i:1;s:32:\"subscription-canceled-vietnamese\";i:1;s:41:\"subscription-payment-succeeded-vietnamese\";i:1;s:39:\"contract-expiration-to-staff-vietnamese\";i:1;s:31:\"gdpr-removal-request-vietnamese\";i:1;s:36:\"gdpr-removal-request-lead-vietnamese\";i:1;s:40:\"client-registration-confirmed-vietnamese\";i:1;s:35:\"contract-signed-to-staff-vietnamese\";i:1;s:39:\"customer-subscribed-to-staff-vietnamese\";i:1;s:37:\"contact-verification-email-vietnamese\";i:1;s:54:\"new-customer-profile-file-uploaded-to-staff-vietnamese\";i:1;s:38:\"event-notification-to-staff-vietnamese\";i:1;s:47:\"subscription-payment-requires-action-vietnamese\";i:1;s:27:\"new-client-created-japanese\";i:1;s:31:\"invoice-send-to-client-japanese\";i:1;s:32:\"new-ticket-opened-admin-japanese\";i:1;s:21:\"ticket-reply-japanese\";i:1;s:28:\"ticket-autoresponse-japanese\";i:1;s:33:\"invoice-payment-recorded-japanese\";i:1;s:31:\"invoice-overdue-notice-japanese\";i:1;s:29:\"invoice-already-send-japanese\";i:1;s:33:\"new-ticket-created-staff-japanese\";i:1;s:32:\"estimate-send-to-client-japanese\";i:1;s:30:\"ticket-reply-to-admin-japanese\";i:1;s:30:\"estimate-already-send-japanese\";i:1;s:28:\"contract-expiration-japanese\";i:1;s:22:\"task-assigned-japanese\";i:1;s:31:\"task-added-as-follower-japanese\";i:1;s:23:\"task-commented-japanese\";i:1;s:30:\"task-added-attachment-japanese\";i:1;s:35:\"estimate-declined-to-staff-japanese\";i:1;s:35:\"estimate-accepted-to-staff-japanese\";i:1;s:33:\"proposal-client-accepted-japanese\";i:1;s:34:\"proposal-send-to-customer-japanese\";i:1;s:33:\"proposal-client-declined-japanese\";i:1;s:34:\"proposal-client-thank-you-japanese\";i:1;s:35:\"proposal-comment-to-client-japanese\";i:1;s:34:\"proposal-comment-to-admin-japanese\";i:1;s:39:\"estimate-thank-you-to-customer-japanese\";i:1;s:35:\"task-deadline-notification-japanese\";i:1;s:22:\"send-contract-japanese\";i:1;s:42:\"invoice-payment-recorded-to-staff-japanese\";i:1;s:26:\"auto-close-ticket-japanese\";i:1;s:48:\"new-project-discussion-created-to-staff-japanese\";i:1;s:51:\"new-project-discussion-created-to-customer-japanese\";i:1;s:46:\"new-project-file-uploaded-to-customer-japanese\";i:1;s:43:\"new-project-file-uploaded-to-staff-japanese\";i:1;s:51:\"new-project-discussion-comment-to-customer-japanese\";i:1;s:48:\"new-project-discussion-comment-to-staff-japanese\";i:1;s:38:\"staff-added-as-project-member-japanese\";i:1;s:33:\"estimate-expiry-reminder-japanese\";i:1;s:33:\"proposal-expiry-reminder-japanese\";i:1;s:26:\"new-staff-created-japanese\";i:1;s:32:\"contact-forgot-password-japanese\";i:1;s:33:\"contact-password-reseted-japanese\";i:1;s:29:\"contact-set-password-japanese\";i:1;s:30:\"staff-forgot-password-japanese\";i:1;s:31:\"staff-password-reseted-japanese\";i:1;s:28:\"assigned-to-project-japanese\";i:1;s:42:\"task-added-attachment-to-contacts-japanese\";i:1;s:35:\"task-commented-to-contacts-japanese\";i:1;s:26:\"new-lead-assigned-japanese\";i:1;s:25:\"client-statement-japanese\";i:1;s:33:\"ticket-assigned-to-admin-japanese\";i:1;s:39:\"new-client-registered-to-admin-japanese\";i:1;s:39:\"new-web-to-lead-form-submitted-japanese\";i:1;s:34:\"two-factor-authentication-japanese\";i:1;s:37:\"project-finished-to-customer-japanese\";i:1;s:35:\"credit-note-send-to-client-japanese\";i:1;s:36:\"task-status-change-to-staff-japanese\";i:1;s:39:\"task-status-change-to-contacts-japanese\";i:1;s:29:\"reminder-email-staff-japanese\";i:1;s:35:\"contract-comment-to-client-japanese\";i:1;s:34:\"contract-comment-to-admin-japanese\";i:1;s:26:\"send-subscription-japanese\";i:1;s:36:\"subscription-payment-failed-japanese\";i:1;s:30:\"subscription-canceled-japanese\";i:1;s:39:\"subscription-payment-succeeded-japanese\";i:1;s:37:\"contract-expiration-to-staff-japanese\";i:1;s:29:\"gdpr-removal-request-japanese\";i:1;s:34:\"gdpr-removal-request-lead-japanese\";i:1;s:38:\"client-registration-confirmed-japanese\";i:1;s:33:\"contract-signed-to-staff-japanese\";i:1;s:37:\"customer-subscribed-to-staff-japanese\";i:1;s:35:\"contact-verification-email-japanese\";i:1;s:52:\"new-customer-profile-file-uploaded-to-staff-japanese\";i:1;s:36:\"event-notification-to-staff-japanese\";i:1;s:45:\"subscription-payment-requires-action-japanese\";i:1;s:25:\"new-client-created-german\";i:1;s:29:\"invoice-send-to-client-german\";i:1;s:30:\"new-ticket-opened-admin-german\";i:1;s:19:\"ticket-reply-german\";i:1;s:26:\"ticket-autoresponse-german\";i:1;s:31:\"invoice-payment-recorded-german\";i:1;s:29:\"invoice-overdue-notice-german\";i:1;s:27:\"invoice-already-send-german\";i:1;s:31:\"new-ticket-created-staff-german\";i:1;s:30:\"estimate-send-to-client-german\";i:1;s:28:\"ticket-reply-to-admin-german\";i:1;s:28:\"estimate-already-send-german\";i:1;s:26:\"contract-expiration-german\";i:1;s:20:\"task-assigned-german\";i:1;s:29:\"task-added-as-follower-german\";i:1;s:21:\"task-commented-german\";i:1;s:28:\"task-added-attachment-german\";i:1;s:33:\"estimate-declined-to-staff-german\";i:1;s:33:\"estimate-accepted-to-staff-german\";i:1;s:31:\"proposal-client-accepted-german\";i:1;s:32:\"proposal-send-to-customer-german\";i:1;s:31:\"proposal-client-declined-german\";i:1;s:32:\"proposal-client-thank-you-german\";i:1;s:33:\"proposal-comment-to-client-german\";i:1;s:32:\"proposal-comment-to-admin-german\";i:1;s:37:\"estimate-thank-you-to-customer-german\";i:1;s:33:\"task-deadline-notification-german\";i:1;s:20:\"send-contract-german\";i:1;s:40:\"invoice-payment-recorded-to-staff-german\";i:1;s:24:\"auto-close-ticket-german\";i:1;s:46:\"new-project-discussion-created-to-staff-german\";i:1;s:49:\"new-project-discussion-created-to-customer-german\";i:1;s:44:\"new-project-file-uploaded-to-customer-german\";i:1;s:41:\"new-project-file-uploaded-to-staff-german\";i:1;s:49:\"new-project-discussion-comment-to-customer-german\";i:1;s:46:\"new-project-discussion-comment-to-staff-german\";i:1;s:36:\"staff-added-as-project-member-german\";i:1;s:31:\"estimate-expiry-reminder-german\";i:1;s:31:\"proposal-expiry-reminder-german\";i:1;s:24:\"new-staff-created-german\";i:1;s:30:\"contact-forgot-password-german\";i:1;s:31:\"contact-password-reseted-german\";i:1;s:27:\"contact-set-password-german\";i:1;s:28:\"staff-forgot-password-german\";i:1;s:29:\"staff-password-reseted-german\";i:1;s:26:\"assigned-to-project-german\";i:1;s:40:\"task-added-attachment-to-contacts-german\";i:1;s:33:\"task-commented-to-contacts-german\";i:1;s:24:\"new-lead-assigned-german\";i:1;s:23:\"client-statement-german\";i:1;s:31:\"ticket-assigned-to-admin-german\";i:1;s:37:\"new-client-registered-to-admin-german\";i:1;s:37:\"new-web-to-lead-form-submitted-german\";i:1;s:32:\"two-factor-authentication-german\";i:1;s:35:\"project-finished-to-customer-german\";i:1;s:33:\"credit-note-send-to-client-german\";i:1;s:34:\"task-status-change-to-staff-german\";i:1;s:37:\"task-status-change-to-contacts-german\";i:1;s:27:\"reminder-email-staff-german\";i:1;s:33:\"contract-comment-to-client-german\";i:1;s:32:\"contract-comment-to-admin-german\";i:1;s:24:\"send-subscription-german\";i:1;s:34:\"subscription-payment-failed-german\";i:1;s:28:\"subscription-canceled-german\";i:1;s:37:\"subscription-payment-succeeded-german\";i:1;s:35:\"contract-expiration-to-staff-german\";i:1;s:27:\"gdpr-removal-request-german\";i:1;s:32:\"gdpr-removal-request-lead-german\";i:1;s:36:\"client-registration-confirmed-german\";i:1;s:31:\"contract-signed-to-staff-german\";i:1;s:35:\"customer-subscribed-to-staff-german\";i:1;s:33:\"contact-verification-email-german\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-german\";i:1;s:34:\"event-notification-to-staff-german\";i:1;s:43:\"subscription-payment-requires-action-german\";i:1;s:28:\"new-client-created-indonesia\";i:1;s:32:\"invoice-send-to-client-indonesia\";i:1;s:33:\"new-ticket-opened-admin-indonesia\";i:1;s:22:\"ticket-reply-indonesia\";i:1;s:29:\"ticket-autoresponse-indonesia\";i:1;s:34:\"invoice-payment-recorded-indonesia\";i:1;s:32:\"invoice-overdue-notice-indonesia\";i:1;s:30:\"invoice-already-send-indonesia\";i:1;s:34:\"new-ticket-created-staff-indonesia\";i:1;s:33:\"estimate-send-to-client-indonesia\";i:1;s:31:\"ticket-reply-to-admin-indonesia\";i:1;s:31:\"estimate-already-send-indonesia\";i:1;s:29:\"contract-expiration-indonesia\";i:1;s:23:\"task-assigned-indonesia\";i:1;s:32:\"task-added-as-follower-indonesia\";i:1;s:24:\"task-commented-indonesia\";i:1;s:31:\"task-added-attachment-indonesia\";i:1;s:36:\"estimate-declined-to-staff-indonesia\";i:1;s:36:\"estimate-accepted-to-staff-indonesia\";i:1;s:34:\"proposal-client-accepted-indonesia\";i:1;s:35:\"proposal-send-to-customer-indonesia\";i:1;s:34:\"proposal-client-declined-indonesia\";i:1;s:35:\"proposal-client-thank-you-indonesia\";i:1;s:36:\"proposal-comment-to-client-indonesia\";i:1;s:35:\"proposal-comment-to-admin-indonesia\";i:1;s:40:\"estimate-thank-you-to-customer-indonesia\";i:1;s:36:\"task-deadline-notification-indonesia\";i:1;s:23:\"send-contract-indonesia\";i:1;s:43:\"invoice-payment-recorded-to-staff-indonesia\";i:1;s:27:\"auto-close-ticket-indonesia\";i:1;s:49:\"new-project-discussion-created-to-staff-indonesia\";i:1;s:52:\"new-project-discussion-created-to-customer-indonesia\";i:1;s:47:\"new-project-file-uploaded-to-customer-indonesia\";i:1;s:44:\"new-project-file-uploaded-to-staff-indonesia\";i:1;s:52:\"new-project-discussion-comment-to-customer-indonesia\";i:1;s:49:\"new-project-discussion-comment-to-staff-indonesia\";i:1;s:39:\"staff-added-as-project-member-indonesia\";i:1;s:34:\"estimate-expiry-reminder-indonesia\";i:1;s:34:\"proposal-expiry-reminder-indonesia\";i:1;s:27:\"new-staff-created-indonesia\";i:1;s:33:\"contact-forgot-password-indonesia\";i:1;s:34:\"contact-password-reseted-indonesia\";i:1;s:30:\"contact-set-password-indonesia\";i:1;s:31:\"staff-forgot-password-indonesia\";i:1;s:32:\"staff-password-reseted-indonesia\";i:1;s:29:\"assigned-to-project-indonesia\";i:1;s:43:\"task-added-attachment-to-contacts-indonesia\";i:1;s:36:\"task-commented-to-contacts-indonesia\";i:1;s:27:\"new-lead-assigned-indonesia\";i:1;s:26:\"client-statement-indonesia\";i:1;s:34:\"ticket-assigned-to-admin-indonesia\";i:1;s:40:\"new-client-registered-to-admin-indonesia\";i:1;s:40:\"new-web-to-lead-form-submitted-indonesia\";i:1;s:35:\"two-factor-authentication-indonesia\";i:1;s:38:\"project-finished-to-customer-indonesia\";i:1;s:36:\"credit-note-send-to-client-indonesia\";i:1;s:37:\"task-status-change-to-staff-indonesia\";i:1;s:40:\"task-status-change-to-contacts-indonesia\";i:1;s:30:\"reminder-email-staff-indonesia\";i:1;s:36:\"contract-comment-to-client-indonesia\";i:1;s:35:\"contract-comment-to-admin-indonesia\";i:1;s:27:\"send-subscription-indonesia\";i:1;s:37:\"subscription-payment-failed-indonesia\";i:1;s:31:\"subscription-canceled-indonesia\";i:1;s:40:\"subscription-payment-succeeded-indonesia\";i:1;s:38:\"contract-expiration-to-staff-indonesia\";i:1;s:30:\"gdpr-removal-request-indonesia\";i:1;s:35:\"gdpr-removal-request-lead-indonesia\";i:1;s:39:\"client-registration-confirmed-indonesia\";i:1;s:34:\"contract-signed-to-staff-indonesia\";i:1;s:38:\"customer-subscribed-to-staff-indonesia\";i:1;s:36:\"contact-verification-email-indonesia\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-indonesia\";i:1;s:37:\"event-notification-to-staff-indonesia\";i:1;s:46:\"subscription-payment-requires-action-indonesia\";i:1;s:25:\"new-client-created-slovak\";i:1;s:29:\"invoice-send-to-client-slovak\";i:1;s:30:\"new-ticket-opened-admin-slovak\";i:1;s:19:\"ticket-reply-slovak\";i:1;s:26:\"ticket-autoresponse-slovak\";i:1;s:31:\"invoice-payment-recorded-slovak\";i:1;s:29:\"invoice-overdue-notice-slovak\";i:1;s:27:\"invoice-already-send-slovak\";i:1;s:31:\"new-ticket-created-staff-slovak\";i:1;s:30:\"estimate-send-to-client-slovak\";i:1;s:28:\"ticket-reply-to-admin-slovak\";i:1;s:28:\"estimate-already-send-slovak\";i:1;s:26:\"contract-expiration-slovak\";i:1;s:20:\"task-assigned-slovak\";i:1;s:29:\"task-added-as-follower-slovak\";i:1;s:21:\"task-commented-slovak\";i:1;s:28:\"task-added-attachment-slovak\";i:1;s:33:\"estimate-declined-to-staff-slovak\";i:1;s:33:\"estimate-accepted-to-staff-slovak\";i:1;s:31:\"proposal-client-accepted-slovak\";i:1;s:32:\"proposal-send-to-customer-slovak\";i:1;s:31:\"proposal-client-declined-slovak\";i:1;s:32:\"proposal-client-thank-you-slovak\";i:1;s:33:\"proposal-comment-to-client-slovak\";i:1;s:32:\"proposal-comment-to-admin-slovak\";i:1;s:37:\"estimate-thank-you-to-customer-slovak\";i:1;s:33:\"task-deadline-notification-slovak\";i:1;s:20:\"send-contract-slovak\";i:1;s:40:\"invoice-payment-recorded-to-staff-slovak\";i:1;s:24:\"auto-close-ticket-slovak\";i:1;s:46:\"new-project-discussion-created-to-staff-slovak\";i:1;s:49:\"new-project-discussion-created-to-customer-slovak\";i:1;s:44:\"new-project-file-uploaded-to-customer-slovak\";i:1;s:41:\"new-project-file-uploaded-to-staff-slovak\";i:1;s:49:\"new-project-discussion-comment-to-customer-slovak\";i:1;s:46:\"new-project-discussion-comment-to-staff-slovak\";i:1;s:36:\"staff-added-as-project-member-slovak\";i:1;s:31:\"estimate-expiry-reminder-slovak\";i:1;s:31:\"proposal-expiry-reminder-slovak\";i:1;s:24:\"new-staff-created-slovak\";i:1;s:30:\"contact-forgot-password-slovak\";i:1;s:31:\"contact-password-reseted-slovak\";i:1;s:27:\"contact-set-password-slovak\";i:1;s:28:\"staff-forgot-password-slovak\";i:1;s:29:\"staff-password-reseted-slovak\";i:1;s:26:\"assigned-to-project-slovak\";i:1;s:40:\"task-added-attachment-to-contacts-slovak\";i:1;s:33:\"task-commented-to-contacts-slovak\";i:1;s:24:\"new-lead-assigned-slovak\";i:1;s:23:\"client-statement-slovak\";i:1;s:31:\"ticket-assigned-to-admin-slovak\";i:1;s:37:\"new-client-registered-to-admin-slovak\";i:1;s:37:\"new-web-to-lead-form-submitted-slovak\";i:1;s:32:\"two-factor-authentication-slovak\";i:1;s:35:\"project-finished-to-customer-slovak\";i:1;s:33:\"credit-note-send-to-client-slovak\";i:1;s:34:\"task-status-change-to-staff-slovak\";i:1;s:37:\"task-status-change-to-contacts-slovak\";i:1;s:27:\"reminder-email-staff-slovak\";i:1;s:33:\"contract-comment-to-client-slovak\";i:1;s:32:\"contract-comment-to-admin-slovak\";i:1;s:24:\"send-subscription-slovak\";i:1;s:34:\"subscription-payment-failed-slovak\";i:1;s:28:\"subscription-canceled-slovak\";i:1;s:37:\"subscription-payment-succeeded-slovak\";i:1;s:35:\"contract-expiration-to-staff-slovak\";i:1;s:27:\"gdpr-removal-request-slovak\";i:1;s:32:\"gdpr-removal-request-lead-slovak\";i:1;s:36:\"client-registration-confirmed-slovak\";i:1;s:31:\"contract-signed-to-staff-slovak\";i:1;s:35:\"customer-subscribed-to-staff-slovak\";i:1;s:33:\"contact-verification-email-slovak\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-slovak\";i:1;s:34:\"event-notification-to-staff-slovak\";i:1;s:43:\"subscription-payment-requires-action-slovak\";i:1;s:27:\"new-client-created-romanian\";i:1;s:31:\"invoice-send-to-client-romanian\";i:1;s:32:\"new-ticket-opened-admin-romanian\";i:1;s:21:\"ticket-reply-romanian\";i:1;s:28:\"ticket-autoresponse-romanian\";i:1;s:33:\"invoice-payment-recorded-romanian\";i:1;s:31:\"invoice-overdue-notice-romanian\";i:1;s:29:\"invoice-already-send-romanian\";i:1;s:33:\"new-ticket-created-staff-romanian\";i:1;s:32:\"estimate-send-to-client-romanian\";i:1;s:30:\"ticket-reply-to-admin-romanian\";i:1;s:30:\"estimate-already-send-romanian\";i:1;s:28:\"contract-expiration-romanian\";i:1;s:22:\"task-assigned-romanian\";i:1;s:31:\"task-added-as-follower-romanian\";i:1;s:23:\"task-commented-romanian\";i:1;s:30:\"task-added-attachment-romanian\";i:1;s:35:\"estimate-declined-to-staff-romanian\";i:1;s:35:\"estimate-accepted-to-staff-romanian\";i:1;s:33:\"proposal-client-accepted-romanian\";i:1;s:34:\"proposal-send-to-customer-romanian\";i:1;s:33:\"proposal-client-declined-romanian\";i:1;s:34:\"proposal-client-thank-you-romanian\";i:1;s:35:\"proposal-comment-to-client-romanian\";i:1;s:34:\"proposal-comment-to-admin-romanian\";i:1;s:39:\"estimate-thank-you-to-customer-romanian\";i:1;s:35:\"task-deadline-notification-romanian\";i:1;s:22:\"send-contract-romanian\";i:1;s:42:\"invoice-payment-recorded-to-staff-romanian\";i:1;s:26:\"auto-close-ticket-romanian\";i:1;s:48:\"new-project-discussion-created-to-staff-romanian\";i:1;s:51:\"new-project-discussion-created-to-customer-romanian\";i:1;s:46:\"new-project-file-uploaded-to-customer-romanian\";i:1;s:43:\"new-project-file-uploaded-to-staff-romanian\";i:1;s:51:\"new-project-discussion-comment-to-customer-romanian\";i:1;s:48:\"new-project-discussion-comment-to-staff-romanian\";i:1;s:38:\"staff-added-as-project-member-romanian\";i:1;s:33:\"estimate-expiry-reminder-romanian\";i:1;s:33:\"proposal-expiry-reminder-romanian\";i:1;s:26:\"new-staff-created-romanian\";i:1;s:32:\"contact-forgot-password-romanian\";i:1;s:33:\"contact-password-reseted-romanian\";i:1;s:29:\"contact-set-password-romanian\";i:1;s:30:\"staff-forgot-password-romanian\";i:1;s:31:\"staff-password-reseted-romanian\";i:1;s:28:\"assigned-to-project-romanian\";i:1;s:42:\"task-added-attachment-to-contacts-romanian\";i:1;s:35:\"task-commented-to-contacts-romanian\";i:1;s:26:\"new-lead-assigned-romanian\";i:1;s:25:\"client-statement-romanian\";i:1;s:33:\"ticket-assigned-to-admin-romanian\";i:1;s:39:\"new-client-registered-to-admin-romanian\";i:1;s:39:\"new-web-to-lead-form-submitted-romanian\";i:1;s:34:\"two-factor-authentication-romanian\";i:1;s:37:\"project-finished-to-customer-romanian\";i:1;s:35:\"credit-note-send-to-client-romanian\";i:1;s:36:\"task-status-change-to-staff-romanian\";i:1;s:39:\"task-status-change-to-contacts-romanian\";i:1;s:29:\"reminder-email-staff-romanian\";i:1;s:35:\"contract-comment-to-client-romanian\";i:1;s:34:\"contract-comment-to-admin-romanian\";i:1;s:26:\"send-subscription-romanian\";i:1;s:36:\"subscription-payment-failed-romanian\";i:1;s:30:\"subscription-canceled-romanian\";i:1;s:39:\"subscription-payment-succeeded-romanian\";i:1;s:37:\"contract-expiration-to-staff-romanian\";i:1;s:29:\"gdpr-removal-request-romanian\";i:1;s:34:\"gdpr-removal-request-lead-romanian\";i:1;s:38:\"client-registration-confirmed-romanian\";i:1;s:33:\"contract-signed-to-staff-romanian\";i:1;s:37:\"customer-subscribed-to-staff-romanian\";i:1;s:35:\"contact-verification-email-romanian\";i:1;s:52:\"new-customer-profile-file-uploaded-to-staff-romanian\";i:1;s:36:\"event-notification-to-staff-romanian\";i:1;s:45:\"subscription-payment-requires-action-romanian\";i:1;s:26:\"new-client-created-turkish\";i:1;s:30:\"invoice-send-to-client-turkish\";i:1;s:31:\"new-ticket-opened-admin-turkish\";i:1;s:20:\"ticket-reply-turkish\";i:1;s:27:\"ticket-autoresponse-turkish\";i:1;s:32:\"invoice-payment-recorded-turkish\";i:1;s:30:\"invoice-overdue-notice-turkish\";i:1;s:28:\"invoice-already-send-turkish\";i:1;s:32:\"new-ticket-created-staff-turkish\";i:1;s:31:\"estimate-send-to-client-turkish\";i:1;s:29:\"ticket-reply-to-admin-turkish\";i:1;s:29:\"estimate-already-send-turkish\";i:1;s:27:\"contract-expiration-turkish\";i:1;s:21:\"task-assigned-turkish\";i:1;s:30:\"task-added-as-follower-turkish\";i:1;s:22:\"task-commented-turkish\";i:1;s:29:\"task-added-attachment-turkish\";i:1;s:34:\"estimate-declined-to-staff-turkish\";i:1;s:34:\"estimate-accepted-to-staff-turkish\";i:1;s:32:\"proposal-client-accepted-turkish\";i:1;s:33:\"proposal-send-to-customer-turkish\";i:1;s:32:\"proposal-client-declined-turkish\";i:1;s:33:\"proposal-client-thank-you-turkish\";i:1;s:34:\"proposal-comment-to-client-turkish\";i:1;s:33:\"proposal-comment-to-admin-turkish\";i:1;s:38:\"estimate-thank-you-to-customer-turkish\";i:1;s:34:\"task-deadline-notification-turkish\";i:1;s:21:\"send-contract-turkish\";i:1;s:41:\"invoice-payment-recorded-to-staff-turkish\";i:1;s:25:\"auto-close-ticket-turkish\";i:1;s:47:\"new-project-discussion-created-to-staff-turkish\";i:1;s:50:\"new-project-discussion-created-to-customer-turkish\";i:1;s:45:\"new-project-file-uploaded-to-customer-turkish\";i:1;s:42:\"new-project-file-uploaded-to-staff-turkish\";i:1;s:50:\"new-project-discussion-comment-to-customer-turkish\";i:1;s:47:\"new-project-discussion-comment-to-staff-turkish\";i:1;s:37:\"staff-added-as-project-member-turkish\";i:1;s:32:\"estimate-expiry-reminder-turkish\";i:1;s:32:\"proposal-expiry-reminder-turkish\";i:1;s:25:\"new-staff-created-turkish\";i:1;s:31:\"contact-forgot-password-turkish\";i:1;s:32:\"contact-password-reseted-turkish\";i:1;s:28:\"contact-set-password-turkish\";i:1;s:29:\"staff-forgot-password-turkish\";i:1;s:30:\"staff-password-reseted-turkish\";i:1;s:27:\"assigned-to-project-turkish\";i:1;s:41:\"task-added-attachment-to-contacts-turkish\";i:1;s:34:\"task-commented-to-contacts-turkish\";i:1;s:25:\"new-lead-assigned-turkish\";i:1;s:24:\"client-statement-turkish\";i:1;s:32:\"ticket-assigned-to-admin-turkish\";i:1;s:38:\"new-client-registered-to-admin-turkish\";i:1;s:38:\"new-web-to-lead-form-submitted-turkish\";i:1;s:33:\"two-factor-authentication-turkish\";i:1;s:36:\"project-finished-to-customer-turkish\";i:1;s:34:\"credit-note-send-to-client-turkish\";i:1;s:35:\"task-status-change-to-staff-turkish\";i:1;s:38:\"task-status-change-to-contacts-turkish\";i:1;s:28:\"reminder-email-staff-turkish\";i:1;s:34:\"contract-comment-to-client-turkish\";i:1;s:33:\"contract-comment-to-admin-turkish\";i:1;s:25:\"send-subscription-turkish\";i:1;s:35:\"subscription-payment-failed-turkish\";i:1;s:29:\"subscription-canceled-turkish\";i:1;s:38:\"subscription-payment-succeeded-turkish\";i:1;s:36:\"contract-expiration-to-staff-turkish\";i:1;s:28:\"gdpr-removal-request-turkish\";i:1;s:33:\"gdpr-removal-request-lead-turkish\";i:1;s:37:\"client-registration-confirmed-turkish\";i:1;s:32:\"contract-signed-to-staff-turkish\";i:1;s:36:\"customer-subscribed-to-staff-turkish\";i:1;s:34:\"contact-verification-email-turkish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-turkish\";i:1;s:35:\"event-notification-to-staff-turkish\";i:1;s:44:\"subscription-payment-requires-action-turkish\";i:1;s:26:\"new-client-created-russian\";i:1;s:30:\"invoice-send-to-client-russian\";i:1;s:31:\"new-ticket-opened-admin-russian\";i:1;s:20:\"ticket-reply-russian\";i:1;s:27:\"ticket-autoresponse-russian\";i:1;s:32:\"invoice-payment-recorded-russian\";i:1;s:30:\"invoice-overdue-notice-russian\";i:1;s:28:\"invoice-already-send-russian\";i:1;s:32:\"new-ticket-created-staff-russian\";i:1;s:31:\"estimate-send-to-client-russian\";i:1;s:29:\"ticket-reply-to-admin-russian\";i:1;s:29:\"estimate-already-send-russian\";i:1;s:27:\"contract-expiration-russian\";i:1;s:21:\"task-assigned-russian\";i:1;s:30:\"task-added-as-follower-russian\";i:1;s:22:\"task-commented-russian\";i:1;s:29:\"task-added-attachment-russian\";i:1;s:34:\"estimate-declined-to-staff-russian\";i:1;s:34:\"estimate-accepted-to-staff-russian\";i:1;s:32:\"proposal-client-accepted-russian\";i:1;s:33:\"proposal-send-to-customer-russian\";i:1;s:32:\"proposal-client-declined-russian\";i:1;s:33:\"proposal-client-thank-you-russian\";i:1;s:34:\"proposal-comment-to-client-russian\";i:1;s:33:\"proposal-comment-to-admin-russian\";i:1;s:38:\"estimate-thank-you-to-customer-russian\";i:1;s:34:\"task-deadline-notification-russian\";i:1;s:21:\"send-contract-russian\";i:1;s:41:\"invoice-payment-recorded-to-staff-russian\";i:1;s:25:\"auto-close-ticket-russian\";i:1;s:47:\"new-project-discussion-created-to-staff-russian\";i:1;s:50:\"new-project-discussion-created-to-customer-russian\";i:1;s:45:\"new-project-file-uploaded-to-customer-russian\";i:1;s:42:\"new-project-file-uploaded-to-staff-russian\";i:1;s:50:\"new-project-discussion-comment-to-customer-russian\";i:1;s:47:\"new-project-discussion-comment-to-staff-russian\";i:1;s:37:\"staff-added-as-project-member-russian\";i:1;s:32:\"estimate-expiry-reminder-russian\";i:1;s:32:\"proposal-expiry-reminder-russian\";i:1;s:25:\"new-staff-created-russian\";i:1;s:31:\"contact-forgot-password-russian\";i:1;s:32:\"contact-password-reseted-russian\";i:1;s:28:\"contact-set-password-russian\";i:1;s:29:\"staff-forgot-password-russian\";i:1;s:30:\"staff-password-reseted-russian\";i:1;s:27:\"assigned-to-project-russian\";i:1;s:41:\"task-added-attachment-to-contacts-russian\";i:1;s:34:\"task-commented-to-contacts-russian\";i:1;s:25:\"new-lead-assigned-russian\";i:1;s:24:\"client-statement-russian\";i:1;s:32:\"ticket-assigned-to-admin-russian\";i:1;s:38:\"new-client-registered-to-admin-russian\";i:1;s:38:\"new-web-to-lead-form-submitted-russian\";i:1;s:33:\"two-factor-authentication-russian\";i:1;s:36:\"project-finished-to-customer-russian\";i:1;s:34:\"credit-note-send-to-client-russian\";i:1;s:35:\"task-status-change-to-staff-russian\";i:1;s:38:\"task-status-change-to-contacts-russian\";i:1;s:28:\"reminder-email-staff-russian\";i:1;s:34:\"contract-comment-to-client-russian\";i:1;s:33:\"contract-comment-to-admin-russian\";i:1;s:25:\"send-subscription-russian\";i:1;s:35:\"subscription-payment-failed-russian\";i:1;s:29:\"subscription-canceled-russian\";i:1;s:38:\"subscription-payment-succeeded-russian\";i:1;s:36:\"contract-expiration-to-staff-russian\";i:1;s:28:\"gdpr-removal-request-russian\";i:1;s:33:\"gdpr-removal-request-lead-russian\";i:1;s:37:\"client-registration-confirmed-russian\";i:1;s:32:\"contract-signed-to-staff-russian\";i:1;s:36:\"customer-subscribed-to-staff-russian\";i:1;s:34:\"contact-verification-email-russian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-russian\";i:1;s:35:\"event-notification-to-staff-russian\";i:1;s:44:\"subscription-payment-requires-action-russian\";i:1;s:26:\"new-client-created-italian\";i:1;s:30:\"invoice-send-to-client-italian\";i:1;s:31:\"new-ticket-opened-admin-italian\";i:1;s:20:\"ticket-reply-italian\";i:1;s:27:\"ticket-autoresponse-italian\";i:1;s:32:\"invoice-payment-recorded-italian\";i:1;s:30:\"invoice-overdue-notice-italian\";i:1;s:28:\"invoice-already-send-italian\";i:1;s:32:\"new-ticket-created-staff-italian\";i:1;s:31:\"estimate-send-to-client-italian\";i:1;s:29:\"ticket-reply-to-admin-italian\";i:1;s:29:\"estimate-already-send-italian\";i:1;s:27:\"contract-expiration-italian\";i:1;s:21:\"task-assigned-italian\";i:1;s:30:\"task-added-as-follower-italian\";i:1;s:22:\"task-commented-italian\";i:1;s:29:\"task-added-attachment-italian\";i:1;s:34:\"estimate-declined-to-staff-italian\";i:1;s:34:\"estimate-accepted-to-staff-italian\";i:1;s:32:\"proposal-client-accepted-italian\";i:1;s:33:\"proposal-send-to-customer-italian\";i:1;s:32:\"proposal-client-declined-italian\";i:1;s:33:\"proposal-client-thank-you-italian\";i:1;s:34:\"proposal-comment-to-client-italian\";i:1;s:33:\"proposal-comment-to-admin-italian\";i:1;s:38:\"estimate-thank-you-to-customer-italian\";i:1;s:34:\"task-deadline-notification-italian\";i:1;s:21:\"send-contract-italian\";i:1;s:41:\"invoice-payment-recorded-to-staff-italian\";i:1;s:25:\"auto-close-ticket-italian\";i:1;s:47:\"new-project-discussion-created-to-staff-italian\";i:1;s:50:\"new-project-discussion-created-to-customer-italian\";i:1;s:45:\"new-project-file-uploaded-to-customer-italian\";i:1;s:42:\"new-project-file-uploaded-to-staff-italian\";i:1;s:50:\"new-project-discussion-comment-to-customer-italian\";i:1;s:47:\"new-project-discussion-comment-to-staff-italian\";i:1;s:37:\"staff-added-as-project-member-italian\";i:1;s:32:\"estimate-expiry-reminder-italian\";i:1;s:32:\"proposal-expiry-reminder-italian\";i:1;s:25:\"new-staff-created-italian\";i:1;s:31:\"contact-forgot-password-italian\";i:1;s:32:\"contact-password-reseted-italian\";i:1;s:28:\"contact-set-password-italian\";i:1;s:29:\"staff-forgot-password-italian\";i:1;s:30:\"staff-password-reseted-italian\";i:1;s:27:\"assigned-to-project-italian\";i:1;s:41:\"task-added-attachment-to-contacts-italian\";i:1;s:34:\"task-commented-to-contacts-italian\";i:1;s:25:\"new-lead-assigned-italian\";i:1;s:24:\"client-statement-italian\";i:1;s:32:\"ticket-assigned-to-admin-italian\";i:1;s:38:\"new-client-registered-to-admin-italian\";i:1;s:38:\"new-web-to-lead-form-submitted-italian\";i:1;s:33:\"two-factor-authentication-italian\";i:1;s:36:\"project-finished-to-customer-italian\";i:1;s:34:\"credit-note-send-to-client-italian\";i:1;s:35:\"task-status-change-to-staff-italian\";i:1;s:38:\"task-status-change-to-contacts-italian\";i:1;s:28:\"reminder-email-staff-italian\";i:1;s:34:\"contract-comment-to-client-italian\";i:1;s:33:\"contract-comment-to-admin-italian\";i:1;s:25:\"send-subscription-italian\";i:1;s:35:\"subscription-payment-failed-italian\";i:1;s:29:\"subscription-canceled-italian\";i:1;s:38:\"subscription-payment-succeeded-italian\";i:1;s:36:\"contract-expiration-to-staff-italian\";i:1;s:28:\"gdpr-removal-request-italian\";i:1;s:33:\"gdpr-removal-request-lead-italian\";i:1;s:37:\"client-registration-confirmed-italian\";i:1;s:32:\"contract-signed-to-staff-italian\";i:1;s:36:\"customer-subscribed-to-staff-italian\";i:1;s:34:\"contact-verification-email-italian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-italian\";i:1;s:35:\"event-notification-to-staff-italian\";i:1;s:44:\"subscription-payment-requires-action-italian\";i:1;s:24:\"new-client-created-greek\";i:1;s:28:\"invoice-send-to-client-greek\";i:1;s:29:\"new-ticket-opened-admin-greek\";i:1;s:18:\"ticket-reply-greek\";i:1;s:25:\"ticket-autoresponse-greek\";i:1;s:30:\"invoice-payment-recorded-greek\";i:1;s:28:\"invoice-overdue-notice-greek\";i:1;s:26:\"invoice-already-send-greek\";i:1;s:30:\"new-ticket-created-staff-greek\";i:1;s:29:\"estimate-send-to-client-greek\";i:1;s:27:\"ticket-reply-to-admin-greek\";i:1;s:27:\"estimate-already-send-greek\";i:1;s:25:\"contract-expiration-greek\";i:1;s:19:\"task-assigned-greek\";i:1;s:28:\"task-added-as-follower-greek\";i:1;s:20:\"task-commented-greek\";i:1;s:27:\"task-added-attachment-greek\";i:1;s:32:\"estimate-declined-to-staff-greek\";i:1;s:32:\"estimate-accepted-to-staff-greek\";i:1;s:30:\"proposal-client-accepted-greek\";i:1;s:31:\"proposal-send-to-customer-greek\";i:1;s:30:\"proposal-client-declined-greek\";i:1;s:31:\"proposal-client-thank-you-greek\";i:1;s:32:\"proposal-comment-to-client-greek\";i:1;s:31:\"proposal-comment-to-admin-greek\";i:1;s:36:\"estimate-thank-you-to-customer-greek\";i:1;s:32:\"task-deadline-notification-greek\";i:1;s:19:\"send-contract-greek\";i:1;s:39:\"invoice-payment-recorded-to-staff-greek\";i:1;s:23:\"auto-close-ticket-greek\";i:1;s:45:\"new-project-discussion-created-to-staff-greek\";i:1;s:48:\"new-project-discussion-created-to-customer-greek\";i:1;s:43:\"new-project-file-uploaded-to-customer-greek\";i:1;s:40:\"new-project-file-uploaded-to-staff-greek\";i:1;s:48:\"new-project-discussion-comment-to-customer-greek\";i:1;s:45:\"new-project-discussion-comment-to-staff-greek\";i:1;s:35:\"staff-added-as-project-member-greek\";i:1;s:30:\"estimate-expiry-reminder-greek\";i:1;s:30:\"proposal-expiry-reminder-greek\";i:1;s:23:\"new-staff-created-greek\";i:1;s:29:\"contact-forgot-password-greek\";i:1;s:30:\"contact-password-reseted-greek\";i:1;s:26:\"contact-set-password-greek\";i:1;s:27:\"staff-forgot-password-greek\";i:1;s:28:\"staff-password-reseted-greek\";i:1;s:25:\"assigned-to-project-greek\";i:1;s:39:\"task-added-attachment-to-contacts-greek\";i:1;s:32:\"task-commented-to-contacts-greek\";i:1;s:23:\"new-lead-assigned-greek\";i:1;s:22:\"client-statement-greek\";i:1;s:30:\"ticket-assigned-to-admin-greek\";i:1;s:36:\"new-client-registered-to-admin-greek\";i:1;s:36:\"new-web-to-lead-form-submitted-greek\";i:1;s:31:\"two-factor-authentication-greek\";i:1;s:34:\"project-finished-to-customer-greek\";i:1;s:32:\"credit-note-send-to-client-greek\";i:1;s:33:\"task-status-change-to-staff-greek\";i:1;s:36:\"task-status-change-to-contacts-greek\";i:1;s:26:\"reminder-email-staff-greek\";i:1;s:32:\"contract-comment-to-client-greek\";i:1;s:31:\"contract-comment-to-admin-greek\";i:1;s:23:\"send-subscription-greek\";i:1;s:33:\"subscription-payment-failed-greek\";i:1;s:27:\"subscription-canceled-greek\";i:1;s:36:\"subscription-payment-succeeded-greek\";i:1;s:34:\"contract-expiration-to-staff-greek\";i:1;s:26:\"gdpr-removal-request-greek\";i:1;s:31:\"gdpr-removal-request-lead-greek\";i:1;s:35:\"client-registration-confirmed-greek\";i:1;s:30:\"contract-signed-to-staff-greek\";i:1;s:34:\"customer-subscribed-to-staff-greek\";i:1;s:32:\"contact-verification-email-greek\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-greek\";i:1;s:33:\"event-notification-to-staff-greek\";i:1;s:42:\"subscription-payment-requires-action-greek\";i:1;s:32:\"new-client-created-portuguese_br\";i:1;s:36:\"invoice-send-to-client-portuguese_br\";i:1;s:37:\"new-ticket-opened-admin-portuguese_br\";i:1;s:26:\"ticket-reply-portuguese_br\";i:1;s:33:\"ticket-autoresponse-portuguese_br\";i:1;s:38:\"invoice-payment-recorded-portuguese_br\";i:1;s:36:\"invoice-overdue-notice-portuguese_br\";i:1;s:34:\"invoice-already-send-portuguese_br\";i:1;s:38:\"new-ticket-created-staff-portuguese_br\";i:1;s:37:\"estimate-send-to-client-portuguese_br\";i:1;s:35:\"ticket-reply-to-admin-portuguese_br\";i:1;s:35:\"estimate-already-send-portuguese_br\";i:1;s:33:\"contract-expiration-portuguese_br\";i:1;s:27:\"task-assigned-portuguese_br\";i:1;s:36:\"task-added-as-follower-portuguese_br\";i:1;s:28:\"task-commented-portuguese_br\";i:1;s:35:\"task-added-attachment-portuguese_br\";i:1;s:40:\"estimate-declined-to-staff-portuguese_br\";i:1;s:40:\"estimate-accepted-to-staff-portuguese_br\";i:1;s:38:\"proposal-client-accepted-portuguese_br\";i:1;s:39:\"proposal-send-to-customer-portuguese_br\";i:1;s:38:\"proposal-client-declined-portuguese_br\";i:1;s:39:\"proposal-client-thank-you-portuguese_br\";i:1;s:40:\"proposal-comment-to-client-portuguese_br\";i:1;s:39:\"proposal-comment-to-admin-portuguese_br\";i:1;s:44:\"estimate-thank-you-to-customer-portuguese_br\";i:1;s:40:\"task-deadline-notification-portuguese_br\";i:1;s:27:\"send-contract-portuguese_br\";i:1;s:47:\"invoice-payment-recorded-to-staff-portuguese_br\";i:1;s:31:\"auto-close-ticket-portuguese_br\";i:1;s:53:\"new-project-discussion-created-to-staff-portuguese_br\";i:1;s:56:\"new-project-discussion-created-to-customer-portuguese_br\";i:1;s:51:\"new-project-file-uploaded-to-customer-portuguese_br\";i:1;s:48:\"new-project-file-uploaded-to-staff-portuguese_br\";i:1;s:56:\"new-project-discussion-comment-to-customer-portuguese_br\";i:1;s:53:\"new-project-discussion-comment-to-staff-portuguese_br\";i:1;s:43:\"staff-added-as-project-member-portuguese_br\";i:1;s:38:\"estimate-expiry-reminder-portuguese_br\";i:1;s:38:\"proposal-expiry-reminder-portuguese_br\";i:1;s:31:\"new-staff-created-portuguese_br\";i:1;s:37:\"contact-forgot-password-portuguese_br\";i:1;s:38:\"contact-password-reseted-portuguese_br\";i:1;s:34:\"contact-set-password-portuguese_br\";i:1;s:35:\"staff-forgot-password-portuguese_br\";i:1;s:36:\"staff-password-reseted-portuguese_br\";i:1;s:33:\"assigned-to-project-portuguese_br\";i:1;s:47:\"task-added-attachment-to-contacts-portuguese_br\";i:1;s:40:\"task-commented-to-contacts-portuguese_br\";i:1;s:31:\"new-lead-assigned-portuguese_br\";i:1;s:30:\"client-statement-portuguese_br\";i:1;s:38:\"ticket-assigned-to-admin-portuguese_br\";i:1;s:44:\"new-client-registered-to-admin-portuguese_br\";i:1;s:44:\"new-web-to-lead-form-submitted-portuguese_br\";i:1;s:39:\"two-factor-authentication-portuguese_br\";i:1;s:42:\"project-finished-to-customer-portuguese_br\";i:1;s:40:\"credit-note-send-to-client-portuguese_br\";i:1;s:41:\"task-status-change-to-staff-portuguese_br\";i:1;s:44:\"task-status-change-to-contacts-portuguese_br\";i:1;s:34:\"reminder-email-staff-portuguese_br\";i:1;s:40:\"contract-comment-to-client-portuguese_br\";i:1;s:39:\"contract-comment-to-admin-portuguese_br\";i:1;s:31:\"send-subscription-portuguese_br\";i:1;s:41:\"subscription-payment-failed-portuguese_br\";i:1;s:35:\"subscription-canceled-portuguese_br\";i:1;s:44:\"subscription-payment-succeeded-portuguese_br\";i:1;s:42:\"contract-expiration-to-staff-portuguese_br\";i:1;s:34:\"gdpr-removal-request-portuguese_br\";i:1;s:39:\"gdpr-removal-request-lead-portuguese_br\";i:1;s:43:\"client-registration-confirmed-portuguese_br\";i:1;s:38:\"contract-signed-to-staff-portuguese_br\";i:1;s:42:\"customer-subscribed-to-staff-portuguese_br\";i:1;s:40:\"contact-verification-email-portuguese_br\";i:1;s:57:\"new-customer-profile-file-uploaded-to-staff-portuguese_br\";i:1;s:41:\"event-notification-to-staff-portuguese_br\";i:1;s:50:\"subscription-payment-requires-action-portuguese_br\";i:1;s:29:\"new-client-created-portuguese\";i:1;s:33:\"invoice-send-to-client-portuguese\";i:1;s:34:\"new-ticket-opened-admin-portuguese\";i:1;s:23:\"ticket-reply-portuguese\";i:1;s:30:\"ticket-autoresponse-portuguese\";i:1;s:35:\"invoice-payment-recorded-portuguese\";i:1;s:33:\"invoice-overdue-notice-portuguese\";i:1;s:31:\"invoice-already-send-portuguese\";i:1;s:35:\"new-ticket-created-staff-portuguese\";i:1;s:34:\"estimate-send-to-client-portuguese\";i:1;s:32:\"ticket-reply-to-admin-portuguese\";i:1;s:32:\"estimate-already-send-portuguese\";i:1;s:30:\"contract-expiration-portuguese\";i:1;s:24:\"task-assigned-portuguese\";i:1;s:33:\"task-added-as-follower-portuguese\";i:1;s:25:\"task-commented-portuguese\";i:1;s:32:\"task-added-attachment-portuguese\";i:1;s:37:\"estimate-declined-to-staff-portuguese\";i:1;s:37:\"estimate-accepted-to-staff-portuguese\";i:1;s:35:\"proposal-client-accepted-portuguese\";i:1;s:36:\"proposal-send-to-customer-portuguese\";i:1;s:35:\"proposal-client-declined-portuguese\";i:1;s:36:\"proposal-client-thank-you-portuguese\";i:1;s:37:\"proposal-comment-to-client-portuguese\";i:1;s:36:\"proposal-comment-to-admin-portuguese\";i:1;s:41:\"estimate-thank-you-to-customer-portuguese\";i:1;s:37:\"task-deadline-notification-portuguese\";i:1;s:24:\"send-contract-portuguese\";i:1;s:44:\"invoice-payment-recorded-to-staff-portuguese\";i:1;s:28:\"auto-close-ticket-portuguese\";i:1;s:50:\"new-project-discussion-created-to-staff-portuguese\";i:1;s:53:\"new-project-discussion-created-to-customer-portuguese\";i:1;s:48:\"new-project-file-uploaded-to-customer-portuguese\";i:1;s:45:\"new-project-file-uploaded-to-staff-portuguese\";i:1;s:53:\"new-project-discussion-comment-to-customer-portuguese\";i:1;s:50:\"new-project-discussion-comment-to-staff-portuguese\";i:1;s:40:\"staff-added-as-project-member-portuguese\";i:1;s:35:\"estimate-expiry-reminder-portuguese\";i:1;s:35:\"proposal-expiry-reminder-portuguese\";i:1;s:28:\"new-staff-created-portuguese\";i:1;s:34:\"contact-forgot-password-portuguese\";i:1;s:35:\"contact-password-reseted-portuguese\";i:1;s:31:\"contact-set-password-portuguese\";i:1;s:32:\"staff-forgot-password-portuguese\";i:1;s:33:\"staff-password-reseted-portuguese\";i:1;s:30:\"assigned-to-project-portuguese\";i:1;s:44:\"task-added-attachment-to-contacts-portuguese\";i:1;s:37:\"task-commented-to-contacts-portuguese\";i:1;s:28:\"new-lead-assigned-portuguese\";i:1;s:27:\"client-statement-portuguese\";i:1;s:35:\"ticket-assigned-to-admin-portuguese\";i:1;s:41:\"new-client-registered-to-admin-portuguese\";i:1;s:41:\"new-web-to-lead-form-submitted-portuguese\";i:1;s:36:\"two-factor-authentication-portuguese\";i:1;s:39:\"project-finished-to-customer-portuguese\";i:1;s:37:\"credit-note-send-to-client-portuguese\";i:1;s:38:\"task-status-change-to-staff-portuguese\";i:1;s:41:\"task-status-change-to-contacts-portuguese\";i:1;s:31:\"reminder-email-staff-portuguese\";i:1;s:37:\"contract-comment-to-client-portuguese\";i:1;s:36:\"contract-comment-to-admin-portuguese\";i:1;s:28:\"send-subscription-portuguese\";i:1;s:38:\"subscription-payment-failed-portuguese\";i:1;s:32:\"subscription-canceled-portuguese\";i:1;s:41:\"subscription-payment-succeeded-portuguese\";i:1;s:39:\"contract-expiration-to-staff-portuguese\";i:1;s:31:\"gdpr-removal-request-portuguese\";i:1;s:36:\"gdpr-removal-request-lead-portuguese\";i:1;s:40:\"client-registration-confirmed-portuguese\";i:1;s:35:\"contract-signed-to-staff-portuguese\";i:1;s:39:\"customer-subscribed-to-staff-portuguese\";i:1;s:37:\"contact-verification-email-portuguese\";i:1;s:54:\"new-customer-profile-file-uploaded-to-staff-portuguese\";i:1;s:38:\"event-notification-to-staff-portuguese\";i:1;s:47:\"subscription-payment-requires-action-portuguese\";i:1;s:25:\"new-client-created-polish\";i:1;s:29:\"invoice-send-to-client-polish\";i:1;s:30:\"new-ticket-opened-admin-polish\";i:1;s:19:\"ticket-reply-polish\";i:1;s:26:\"ticket-autoresponse-polish\";i:1;s:31:\"invoice-payment-recorded-polish\";i:1;s:29:\"invoice-overdue-notice-polish\";i:1;s:27:\"invoice-already-send-polish\";i:1;s:31:\"new-ticket-created-staff-polish\";i:1;s:30:\"estimate-send-to-client-polish\";i:1;s:28:\"ticket-reply-to-admin-polish\";i:1;s:28:\"estimate-already-send-polish\";i:1;s:26:\"contract-expiration-polish\";i:1;s:20:\"task-assigned-polish\";i:1;s:29:\"task-added-as-follower-polish\";i:1;s:21:\"task-commented-polish\";i:1;s:28:\"task-added-attachment-polish\";i:1;s:33:\"estimate-declined-to-staff-polish\";i:1;s:33:\"estimate-accepted-to-staff-polish\";i:1;s:31:\"proposal-client-accepted-polish\";i:1;s:32:\"proposal-send-to-customer-polish\";i:1;s:31:\"proposal-client-declined-polish\";i:1;s:32:\"proposal-client-thank-you-polish\";i:1;s:33:\"proposal-comment-to-client-polish\";i:1;s:32:\"proposal-comment-to-admin-polish\";i:1;s:37:\"estimate-thank-you-to-customer-polish\";i:1;s:33:\"task-deadline-notification-polish\";i:1;s:20:\"send-contract-polish\";i:1;s:40:\"invoice-payment-recorded-to-staff-polish\";i:1;s:24:\"auto-close-ticket-polish\";i:1;s:46:\"new-project-discussion-created-to-staff-polish\";i:1;s:49:\"new-project-discussion-created-to-customer-polish\";i:1;s:44:\"new-project-file-uploaded-to-customer-polish\";i:1;s:41:\"new-project-file-uploaded-to-staff-polish\";i:1;s:49:\"new-project-discussion-comment-to-customer-polish\";i:1;s:46:\"new-project-discussion-comment-to-staff-polish\";i:1;s:36:\"staff-added-as-project-member-polish\";i:1;s:31:\"estimate-expiry-reminder-polish\";i:1;s:31:\"proposal-expiry-reminder-polish\";i:1;s:24:\"new-staff-created-polish\";i:1;s:30:\"contact-forgot-password-polish\";i:1;s:31:\"contact-password-reseted-polish\";i:1;s:27:\"contact-set-password-polish\";i:1;s:28:\"staff-forgot-password-polish\";i:1;s:29:\"staff-password-reseted-polish\";i:1;s:26:\"assigned-to-project-polish\";i:1;s:40:\"task-added-attachment-to-contacts-polish\";i:1;s:33:\"task-commented-to-contacts-polish\";i:1;s:24:\"new-lead-assigned-polish\";i:1;s:23:\"client-statement-polish\";i:1;s:31:\"ticket-assigned-to-admin-polish\";i:1;s:37:\"new-client-registered-to-admin-polish\";i:1;s:37:\"new-web-to-lead-form-submitted-polish\";i:1;s:32:\"two-factor-authentication-polish\";i:1;s:35:\"project-finished-to-customer-polish\";i:1;s:33:\"credit-note-send-to-client-polish\";i:1;s:34:\"task-status-change-to-staff-polish\";i:1;s:37:\"task-status-change-to-contacts-polish\";i:1;s:27:\"reminder-email-staff-polish\";i:1;s:33:\"contract-comment-to-client-polish\";i:1;s:32:\"contract-comment-to-admin-polish\";i:1;s:24:\"send-subscription-polish\";i:1;s:34:\"subscription-payment-failed-polish\";i:1;s:28:\"subscription-canceled-polish\";i:1;s:37:\"subscription-payment-succeeded-polish\";i:1;s:35:\"contract-expiration-to-staff-polish\";i:1;s:27:\"gdpr-removal-request-polish\";i:1;s:32:\"gdpr-removal-request-lead-polish\";i:1;s:36:\"client-registration-confirmed-polish\";i:1;s:31:\"contract-signed-to-staff-polish\";i:1;s:35:\"customer-subscribed-to-staff-polish\";i:1;s:33:\"contact-verification-email-polish\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-polish\";i:1;s:34:\"event-notification-to-staff-polish\";i:1;s:43:\"subscription-payment-requires-action-polish\";i:1;s:25:\"new-client-created-french\";i:1;s:29:\"invoice-send-to-client-french\";i:1;s:30:\"new-ticket-opened-admin-french\";i:1;s:19:\"ticket-reply-french\";i:1;s:26:\"ticket-autoresponse-french\";i:1;s:31:\"invoice-payment-recorded-french\";i:1;s:29:\"invoice-overdue-notice-french\";i:1;s:27:\"invoice-already-send-french\";i:1;s:31:\"new-ticket-created-staff-french\";i:1;s:30:\"estimate-send-to-client-french\";i:1;s:28:\"ticket-reply-to-admin-french\";i:1;s:28:\"estimate-already-send-french\";i:1;s:26:\"contract-expiration-french\";i:1;s:20:\"task-assigned-french\";i:1;s:29:\"task-added-as-follower-french\";i:1;s:21:\"task-commented-french\";i:1;s:28:\"task-added-attachment-french\";i:1;s:33:\"estimate-declined-to-staff-french\";i:1;s:33:\"estimate-accepted-to-staff-french\";i:1;s:31:\"proposal-client-accepted-french\";i:1;s:32:\"proposal-send-to-customer-french\";i:1;s:31:\"proposal-client-declined-french\";i:1;s:32:\"proposal-client-thank-you-french\";i:1;s:33:\"proposal-comment-to-client-french\";i:1;s:32:\"proposal-comment-to-admin-french\";i:1;s:37:\"estimate-thank-you-to-customer-french\";i:1;s:33:\"task-deadline-notification-french\";i:1;s:20:\"send-contract-french\";i:1;s:40:\"invoice-payment-recorded-to-staff-french\";i:1;s:24:\"auto-close-ticket-french\";i:1;s:46:\"new-project-discussion-created-to-staff-french\";i:1;s:49:\"new-project-discussion-created-to-customer-french\";i:1;s:44:\"new-project-file-uploaded-to-customer-french\";i:1;s:41:\"new-project-file-uploaded-to-staff-french\";i:1;s:49:\"new-project-discussion-comment-to-customer-french\";i:1;s:46:\"new-project-discussion-comment-to-staff-french\";i:1;s:36:\"staff-added-as-project-member-french\";i:1;s:31:\"estimate-expiry-reminder-french\";i:1;s:31:\"proposal-expiry-reminder-french\";i:1;s:24:\"new-staff-created-french\";i:1;s:30:\"contact-forgot-password-french\";i:1;s:31:\"contact-password-reseted-french\";i:1;s:27:\"contact-set-password-french\";i:1;s:28:\"staff-forgot-password-french\";i:1;s:29:\"staff-password-reseted-french\";i:1;s:26:\"assigned-to-project-french\";i:1;s:40:\"task-added-attachment-to-contacts-french\";i:1;s:33:\"task-commented-to-contacts-french\";i:1;s:24:\"new-lead-assigned-french\";i:1;s:23:\"client-statement-french\";i:1;s:31:\"ticket-assigned-to-admin-french\";i:1;s:37:\"new-client-registered-to-admin-french\";i:1;s:37:\"new-web-to-lead-form-submitted-french\";i:1;s:32:\"two-factor-authentication-french\";i:1;s:35:\"project-finished-to-customer-french\";i:1;s:33:\"credit-note-send-to-client-french\";i:1;s:34:\"task-status-change-to-staff-french\";i:1;s:37:\"task-status-change-to-contacts-french\";i:1;s:27:\"reminder-email-staff-french\";i:1;s:33:\"contract-comment-to-client-french\";i:1;s:32:\"contract-comment-to-admin-french\";i:1;s:24:\"send-subscription-french\";i:1;s:34:\"subscription-payment-failed-french\";i:1;s:28:\"subscription-canceled-french\";i:1;s:37:\"subscription-payment-succeeded-french\";i:1;s:35:\"contract-expiration-to-staff-french\";i:1;s:27:\"gdpr-removal-request-french\";i:1;s:32:\"gdpr-removal-request-lead-french\";i:1;s:36:\"client-registration-confirmed-french\";i:1;s:31:\"contract-signed-to-staff-french\";i:1;s:35:\"customer-subscribed-to-staff-french\";i:1;s:33:\"contact-verification-email-french\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-french\";i:1;s:34:\"event-notification-to-staff-french\";i:1;s:43:\"subscription-payment-requires-action-french\";i:1;s:26:\"new-client-created-swedish\";i:1;s:30:\"invoice-send-to-client-swedish\";i:1;s:31:\"new-ticket-opened-admin-swedish\";i:1;s:20:\"ticket-reply-swedish\";i:1;s:27:\"ticket-autoresponse-swedish\";i:1;s:32:\"invoice-payment-recorded-swedish\";i:1;s:30:\"invoice-overdue-notice-swedish\";i:1;s:28:\"invoice-already-send-swedish\";i:1;s:32:\"new-ticket-created-staff-swedish\";i:1;s:31:\"estimate-send-to-client-swedish\";i:1;s:29:\"ticket-reply-to-admin-swedish\";i:1;s:29:\"estimate-already-send-swedish\";i:1;s:27:\"contract-expiration-swedish\";i:1;s:21:\"task-assigned-swedish\";i:1;s:30:\"task-added-as-follower-swedish\";i:1;s:22:\"task-commented-swedish\";i:1;s:29:\"task-added-attachment-swedish\";i:1;s:34:\"estimate-declined-to-staff-swedish\";i:1;s:34:\"estimate-accepted-to-staff-swedish\";i:1;s:32:\"proposal-client-accepted-swedish\";i:1;s:33:\"proposal-send-to-customer-swedish\";i:1;s:32:\"proposal-client-declined-swedish\";i:1;s:33:\"proposal-client-thank-you-swedish\";i:1;s:34:\"proposal-comment-to-client-swedish\";i:1;s:33:\"proposal-comment-to-admin-swedish\";i:1;s:38:\"estimate-thank-you-to-customer-swedish\";i:1;s:34:\"task-deadline-notification-swedish\";i:1;s:21:\"send-contract-swedish\";i:1;s:41:\"invoice-payment-recorded-to-staff-swedish\";i:1;s:25:\"auto-close-ticket-swedish\";i:1;s:47:\"new-project-discussion-created-to-staff-swedish\";i:1;s:50:\"new-project-discussion-created-to-customer-swedish\";i:1;s:45:\"new-project-file-uploaded-to-customer-swedish\";i:1;s:42:\"new-project-file-uploaded-to-staff-swedish\";i:1;s:50:\"new-project-discussion-comment-to-customer-swedish\";i:1;s:47:\"new-project-discussion-comment-to-staff-swedish\";i:1;s:37:\"staff-added-as-project-member-swedish\";i:1;s:32:\"estimate-expiry-reminder-swedish\";i:1;s:32:\"proposal-expiry-reminder-swedish\";i:1;s:25:\"new-staff-created-swedish\";i:1;s:31:\"contact-forgot-password-swedish\";i:1;s:32:\"contact-password-reseted-swedish\";i:1;s:28:\"contact-set-password-swedish\";i:1;s:29:\"staff-forgot-password-swedish\";i:1;s:30:\"staff-password-reseted-swedish\";i:1;s:27:\"assigned-to-project-swedish\";i:1;s:41:\"task-added-attachment-to-contacts-swedish\";i:1;s:34:\"task-commented-to-contacts-swedish\";i:1;s:25:\"new-lead-assigned-swedish\";i:1;s:24:\"client-statement-swedish\";i:1;s:32:\"ticket-assigned-to-admin-swedish\";i:1;s:38:\"new-client-registered-to-admin-swedish\";i:1;s:38:\"new-web-to-lead-form-submitted-swedish\";i:1;s:33:\"two-factor-authentication-swedish\";i:1;s:36:\"project-finished-to-customer-swedish\";i:1;s:34:\"credit-note-send-to-client-swedish\";i:1;s:35:\"task-status-change-to-staff-swedish\";i:1;s:38:\"task-status-change-to-contacts-swedish\";i:1;s:28:\"reminder-email-staff-swedish\";i:1;s:34:\"contract-comment-to-client-swedish\";i:1;s:33:\"contract-comment-to-admin-swedish\";i:1;s:25:\"send-subscription-swedish\";i:1;s:35:\"subscription-payment-failed-swedish\";i:1;s:29:\"subscription-canceled-swedish\";i:1;s:38:\"subscription-payment-succeeded-swedish\";i:1;s:36:\"contract-expiration-to-staff-swedish\";i:1;s:28:\"gdpr-removal-request-swedish\";i:1;s:33:\"gdpr-removal-request-lead-swedish\";i:1;s:37:\"client-registration-confirmed-swedish\";i:1;s:32:\"contract-signed-to-staff-swedish\";i:1;s:36:\"customer-subscribed-to-staff-swedish\";i:1;s:34:\"contact-verification-email-swedish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-swedish\";i:1;s:35:\"event-notification-to-staff-swedish\";i:1;s:44:\"subscription-payment-requires-action-swedish\";i:1;s:26:\"new-client-created-spanish\";i:1;s:30:\"invoice-send-to-client-spanish\";i:1;s:31:\"new-ticket-opened-admin-spanish\";i:1;s:20:\"ticket-reply-spanish\";i:1;s:27:\"ticket-autoresponse-spanish\";i:1;s:32:\"invoice-payment-recorded-spanish\";i:1;s:30:\"invoice-overdue-notice-spanish\";i:1;s:28:\"invoice-already-send-spanish\";i:1;s:32:\"new-ticket-created-staff-spanish\";i:1;s:31:\"estimate-send-to-client-spanish\";i:1;s:29:\"ticket-reply-to-admin-spanish\";i:1;s:29:\"estimate-already-send-spanish\";i:1;s:27:\"contract-expiration-spanish\";i:1;s:21:\"task-assigned-spanish\";i:1;s:30:\"task-added-as-follower-spanish\";i:1;s:22:\"task-commented-spanish\";i:1;s:29:\"task-added-attachment-spanish\";i:1;s:34:\"estimate-declined-to-staff-spanish\";i:1;s:34:\"estimate-accepted-to-staff-spanish\";i:1;s:32:\"proposal-client-accepted-spanish\";i:1;s:33:\"proposal-send-to-customer-spanish\";i:1;s:32:\"proposal-client-declined-spanish\";i:1;s:33:\"proposal-client-thank-you-spanish\";i:1;s:34:\"proposal-comment-to-client-spanish\";i:1;s:33:\"proposal-comment-to-admin-spanish\";i:1;s:38:\"estimate-thank-you-to-customer-spanish\";i:1;s:34:\"task-deadline-notification-spanish\";i:1;s:21:\"send-contract-spanish\";i:1;s:41:\"invoice-payment-recorded-to-staff-spanish\";i:1;s:25:\"auto-close-ticket-spanish\";i:1;s:47:\"new-project-discussion-created-to-staff-spanish\";i:1;s:50:\"new-project-discussion-created-to-customer-spanish\";i:1;s:45:\"new-project-file-uploaded-to-customer-spanish\";i:1;s:42:\"new-project-file-uploaded-to-staff-spanish\";i:1;s:50:\"new-project-discussion-comment-to-customer-spanish\";i:1;s:47:\"new-project-discussion-comment-to-staff-spanish\";i:1;s:37:\"staff-added-as-project-member-spanish\";i:1;s:32:\"estimate-expiry-reminder-spanish\";i:1;s:32:\"proposal-expiry-reminder-spanish\";i:1;s:25:\"new-staff-created-spanish\";i:1;s:31:\"contact-forgot-password-spanish\";i:1;s:32:\"contact-password-reseted-spanish\";i:1;s:28:\"contact-set-password-spanish\";i:1;s:29:\"staff-forgot-password-spanish\";i:1;s:30:\"staff-password-reseted-spanish\";i:1;s:27:\"assigned-to-project-spanish\";i:1;s:41:\"task-added-attachment-to-contacts-spanish\";i:1;s:34:\"task-commented-to-contacts-spanish\";i:1;s:25:\"new-lead-assigned-spanish\";i:1;s:24:\"client-statement-spanish\";i:1;s:32:\"ticket-assigned-to-admin-spanish\";i:1;s:38:\"new-client-registered-to-admin-spanish\";i:1;s:38:\"new-web-to-lead-form-submitted-spanish\";i:1;s:33:\"two-factor-authentication-spanish\";i:1;s:36:\"project-finished-to-customer-spanish\";i:1;s:34:\"credit-note-send-to-client-spanish\";i:1;s:35:\"task-status-change-to-staff-spanish\";i:1;s:38:\"task-status-change-to-contacts-spanish\";i:1;s:28:\"reminder-email-staff-spanish\";i:1;s:34:\"contract-comment-to-client-spanish\";i:1;s:33:\"contract-comment-to-admin-spanish\";i:1;s:25:\"send-subscription-spanish\";i:1;s:35:\"subscription-payment-failed-spanish\";i:1;s:29:\"subscription-canceled-spanish\";i:1;s:38:\"subscription-payment-succeeded-spanish\";i:1;s:36:\"contract-expiration-to-staff-spanish\";i:1;s:28:\"gdpr-removal-request-spanish\";i:1;s:33:\"gdpr-removal-request-lead-spanish\";i:1;s:37:\"client-registration-confirmed-spanish\";i:1;s:32:\"contract-signed-to-staff-spanish\";i:1;s:36:\"customer-subscribed-to-staff-spanish\";i:1;s:34:\"contact-verification-email-spanish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-spanish\";i:1;s:35:\"event-notification-to-staff-spanish\";i:1;s:44:\"subscription-payment-requires-action-spanish\";i:1;s:26:\"new-client-created-chinese\";i:1;s:30:\"invoice-send-to-client-chinese\";i:1;s:31:\"new-ticket-opened-admin-chinese\";i:1;s:20:\"ticket-reply-chinese\";i:1;s:27:\"ticket-autoresponse-chinese\";i:1;s:32:\"invoice-payment-recorded-chinese\";i:1;s:30:\"invoice-overdue-notice-chinese\";i:1;s:28:\"invoice-already-send-chinese\";i:1;s:32:\"new-ticket-created-staff-chinese\";i:1;s:31:\"estimate-send-to-client-chinese\";i:1;s:29:\"ticket-reply-to-admin-chinese\";i:1;s:29:\"estimate-already-send-chinese\";i:1;s:27:\"contract-expiration-chinese\";i:1;s:21:\"task-assigned-chinese\";i:1;s:30:\"task-added-as-follower-chinese\";i:1;s:22:\"task-commented-chinese\";i:1;s:29:\"task-added-attachment-chinese\";i:1;s:34:\"estimate-declined-to-staff-chinese\";i:1;s:34:\"estimate-accepted-to-staff-chinese\";i:1;s:32:\"proposal-client-accepted-chinese\";i:1;s:33:\"proposal-send-to-customer-chinese\";i:1;s:32:\"proposal-client-declined-chinese\";i:1;s:33:\"proposal-client-thank-you-chinese\";i:1;s:34:\"proposal-comment-to-client-chinese\";i:1;s:33:\"proposal-comment-to-admin-chinese\";i:1;s:38:\"estimate-thank-you-to-customer-chinese\";i:1;s:34:\"task-deadline-notification-chinese\";i:1;s:21:\"send-contract-chinese\";i:1;s:41:\"invoice-payment-recorded-to-staff-chinese\";i:1;s:25:\"auto-close-ticket-chinese\";i:1;s:47:\"new-project-discussion-created-to-staff-chinese\";i:1;s:50:\"new-project-discussion-created-to-customer-chinese\";i:1;s:45:\"new-project-file-uploaded-to-customer-chinese\";i:1;s:42:\"new-project-file-uploaded-to-staff-chinese\";i:1;s:50:\"new-project-discussion-comment-to-customer-chinese\";i:1;s:47:\"new-project-discussion-comment-to-staff-chinese\";i:1;s:37:\"staff-added-as-project-member-chinese\";i:1;s:32:\"estimate-expiry-reminder-chinese\";i:1;s:32:\"proposal-expiry-reminder-chinese\";i:1;s:25:\"new-staff-created-chinese\";i:1;s:31:\"contact-forgot-password-chinese\";i:1;s:32:\"contact-password-reseted-chinese\";i:1;s:28:\"contact-set-password-chinese\";i:1;s:29:\"staff-forgot-password-chinese\";i:1;s:30:\"staff-password-reseted-chinese\";i:1;s:27:\"assigned-to-project-chinese\";i:1;s:41:\"task-added-attachment-to-contacts-chinese\";i:1;s:34:\"task-commented-to-contacts-chinese\";i:1;s:25:\"new-lead-assigned-chinese\";i:1;s:24:\"client-statement-chinese\";i:1;s:32:\"ticket-assigned-to-admin-chinese\";i:1;s:38:\"new-client-registered-to-admin-chinese\";i:1;s:38:\"new-web-to-lead-form-submitted-chinese\";i:1;s:33:\"two-factor-authentication-chinese\";i:1;s:36:\"project-finished-to-customer-chinese\";i:1;s:34:\"credit-note-send-to-client-chinese\";i:1;s:35:\"task-status-change-to-staff-chinese\";i:1;s:38:\"task-status-change-to-contacts-chinese\";i:1;s:28:\"reminder-email-staff-chinese\";i:1;s:34:\"contract-comment-to-client-chinese\";i:1;s:33:\"contract-comment-to-admin-chinese\";i:1;s:25:\"send-subscription-chinese\";i:1;s:35:\"subscription-payment-failed-chinese\";i:1;s:29:\"subscription-canceled-chinese\";i:1;s:38:\"subscription-payment-succeeded-chinese\";i:1;s:36:\"contract-expiration-to-staff-chinese\";i:1;s:28:\"gdpr-removal-request-chinese\";i:1;s:33:\"gdpr-removal-request-lead-chinese\";i:1;s:37:\"client-registration-confirmed-chinese\";i:1;s:32:\"contract-signed-to-staff-chinese\";i:1;s:36:\"customer-subscribed-to-staff-chinese\";i:1;s:34:\"contact-verification-email-chinese\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-chinese\";i:1;s:35:\"event-notification-to-staff-chinese\";i:1;s:44:\"subscription-payment-requires-action-chinese\";i:1;s:26:\"new-client-created-persian\";i:1;s:30:\"invoice-send-to-client-persian\";i:1;s:31:\"new-ticket-opened-admin-persian\";i:1;s:20:\"ticket-reply-persian\";i:1;s:27:\"ticket-autoresponse-persian\";i:1;s:32:\"invoice-payment-recorded-persian\";i:1;s:30:\"invoice-overdue-notice-persian\";i:1;s:28:\"invoice-already-send-persian\";i:1;s:32:\"new-ticket-created-staff-persian\";i:1;s:31:\"estimate-send-to-client-persian\";i:1;s:29:\"ticket-reply-to-admin-persian\";i:1;s:29:\"estimate-already-send-persian\";i:1;s:27:\"contract-expiration-persian\";i:1;s:21:\"task-assigned-persian\";i:1;s:30:\"task-added-as-follower-persian\";i:1;s:22:\"task-commented-persian\";i:1;s:29:\"task-added-attachment-persian\";i:1;s:34:\"estimate-declined-to-staff-persian\";i:1;s:34:\"estimate-accepted-to-staff-persian\";i:1;s:32:\"proposal-client-accepted-persian\";i:1;s:33:\"proposal-send-to-customer-persian\";i:1;s:32:\"proposal-client-declined-persian\";i:1;s:33:\"proposal-client-thank-you-persian\";i:1;s:34:\"proposal-comment-to-client-persian\";i:1;s:33:\"proposal-comment-to-admin-persian\";i:1;s:38:\"estimate-thank-you-to-customer-persian\";i:1;s:34:\"task-deadline-notification-persian\";i:1;s:21:\"send-contract-persian\";i:1;s:41:\"invoice-payment-recorded-to-staff-persian\";i:1;s:25:\"auto-close-ticket-persian\";i:1;s:47:\"new-project-discussion-created-to-staff-persian\";i:1;s:50:\"new-project-discussion-created-to-customer-persian\";i:1;s:45:\"new-project-file-uploaded-to-customer-persian\";i:1;s:42:\"new-project-file-uploaded-to-staff-persian\";i:1;s:50:\"new-project-discussion-comment-to-customer-persian\";i:1;s:47:\"new-project-discussion-comment-to-staff-persian\";i:1;s:37:\"staff-added-as-project-member-persian\";i:1;s:32:\"estimate-expiry-reminder-persian\";i:1;s:32:\"proposal-expiry-reminder-persian\";i:1;s:25:\"new-staff-created-persian\";i:1;s:31:\"contact-forgot-password-persian\";i:1;s:32:\"contact-password-reseted-persian\";i:1;s:28:\"contact-set-password-persian\";i:1;s:29:\"staff-forgot-password-persian\";i:1;s:30:\"staff-password-reseted-persian\";i:1;s:27:\"assigned-to-project-persian\";i:1;s:41:\"task-added-attachment-to-contacts-persian\";i:1;s:34:\"task-commented-to-contacts-persian\";i:1;s:25:\"new-lead-assigned-persian\";i:1;s:24:\"client-statement-persian\";i:1;s:32:\"ticket-assigned-to-admin-persian\";i:1;s:38:\"new-client-registered-to-admin-persian\";i:1;s:38:\"new-web-to-lead-form-submitted-persian\";i:1;s:33:\"two-factor-authentication-persian\";i:1;s:36:\"project-finished-to-customer-persian\";i:1;s:34:\"credit-note-send-to-client-persian\";i:1;s:35:\"task-status-change-to-staff-persian\";i:1;s:38:\"task-status-change-to-contacts-persian\";i:1;s:28:\"reminder-email-staff-persian\";i:1;s:34:\"contract-comment-to-client-persian\";i:1;s:33:\"contract-comment-to-admin-persian\";i:1;s:25:\"send-subscription-persian\";i:1;s:35:\"subscription-payment-failed-persian\";i:1;s:29:\"subscription-canceled-persian\";i:1;s:38:\"subscription-payment-succeeded-persian\";i:1;s:36:\"contract-expiration-to-staff-persian\";i:1;s:28:\"gdpr-removal-request-persian\";i:1;s:33:\"gdpr-removal-request-lead-persian\";i:1;s:37:\"client-registration-confirmed-persian\";i:1;s:32:\"contract-signed-to-staff-persian\";i:1;s:36:\"customer-subscribed-to-staff-persian\";i:1;s:34:\"contact-verification-email-persian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-persian\";i:1;s:35:\"event-notification-to-staff-persian\";i:1;s:44:\"subscription-payment-requires-action-persian\";i:1;s:28:\"new-client-created-ukrainian\";i:1;s:32:\"invoice-send-to-client-ukrainian\";i:1;s:33:\"new-ticket-opened-admin-ukrainian\";i:1;s:22:\"ticket-reply-ukrainian\";i:1;s:29:\"ticket-autoresponse-ukrainian\";i:1;s:34:\"invoice-payment-recorded-ukrainian\";i:1;s:32:\"invoice-overdue-notice-ukrainian\";i:1;s:30:\"invoice-already-send-ukrainian\";i:1;s:34:\"new-ticket-created-staff-ukrainian\";i:1;s:33:\"estimate-send-to-client-ukrainian\";i:1;s:31:\"ticket-reply-to-admin-ukrainian\";i:1;s:31:\"estimate-already-send-ukrainian\";i:1;s:29:\"contract-expiration-ukrainian\";i:1;s:23:\"task-assigned-ukrainian\";i:1;s:32:\"task-added-as-follower-ukrainian\";i:1;s:24:\"task-commented-ukrainian\";i:1;s:31:\"task-added-attachment-ukrainian\";i:1;s:36:\"estimate-declined-to-staff-ukrainian\";i:1;s:36:\"estimate-accepted-to-staff-ukrainian\";i:1;s:34:\"proposal-client-accepted-ukrainian\";i:1;s:35:\"proposal-send-to-customer-ukrainian\";i:1;s:34:\"proposal-client-declined-ukrainian\";i:1;s:35:\"proposal-client-thank-you-ukrainian\";i:1;s:36:\"proposal-comment-to-client-ukrainian\";i:1;s:35:\"proposal-comment-to-admin-ukrainian\";i:1;s:40:\"estimate-thank-you-to-customer-ukrainian\";i:1;s:36:\"task-deadline-notification-ukrainian\";i:1;s:23:\"send-contract-ukrainian\";i:1;s:43:\"invoice-payment-recorded-to-staff-ukrainian\";i:1;s:27:\"auto-close-ticket-ukrainian\";i:1;s:49:\"new-project-discussion-created-to-staff-ukrainian\";i:1;s:52:\"new-project-discussion-created-to-customer-ukrainian\";i:1;s:47:\"new-project-file-uploaded-to-customer-ukrainian\";i:1;s:44:\"new-project-file-uploaded-to-staff-ukrainian\";i:1;s:52:\"new-project-discussion-comment-to-customer-ukrainian\";i:1;s:49:\"new-project-discussion-comment-to-staff-ukrainian\";i:1;s:39:\"staff-added-as-project-member-ukrainian\";i:1;s:34:\"estimate-expiry-reminder-ukrainian\";i:1;s:34:\"proposal-expiry-reminder-ukrainian\";i:1;s:27:\"new-staff-created-ukrainian\";i:1;s:33:\"contact-forgot-password-ukrainian\";i:1;s:34:\"contact-password-reseted-ukrainian\";i:1;s:30:\"contact-set-password-ukrainian\";i:1;s:31:\"staff-forgot-password-ukrainian\";i:1;s:32:\"staff-password-reseted-ukrainian\";i:1;s:29:\"assigned-to-project-ukrainian\";i:1;s:43:\"task-added-attachment-to-contacts-ukrainian\";i:1;s:36:\"task-commented-to-contacts-ukrainian\";i:1;s:27:\"new-lead-assigned-ukrainian\";i:1;s:26:\"client-statement-ukrainian\";i:1;s:34:\"ticket-assigned-to-admin-ukrainian\";i:1;s:40:\"new-client-registered-to-admin-ukrainian\";i:1;s:40:\"new-web-to-lead-form-submitted-ukrainian\";i:1;s:35:\"two-factor-authentication-ukrainian\";i:1;s:38:\"project-finished-to-customer-ukrainian\";i:1;s:36:\"credit-note-send-to-client-ukrainian\";i:1;s:37:\"task-status-change-to-staff-ukrainian\";i:1;s:40:\"task-status-change-to-contacts-ukrainian\";i:1;s:30:\"reminder-email-staff-ukrainian\";i:1;s:36:\"contract-comment-to-client-ukrainian\";i:1;s:35:\"contract-comment-to-admin-ukrainian\";i:1;s:27:\"send-subscription-ukrainian\";i:1;s:37:\"subscription-payment-failed-ukrainian\";i:1;s:31:\"subscription-canceled-ukrainian\";i:1;s:40:\"subscription-payment-succeeded-ukrainian\";i:1;s:38:\"contract-expiration-to-staff-ukrainian\";i:1;s:30:\"gdpr-removal-request-ukrainian\";i:1;s:35:\"gdpr-removal-request-lead-ukrainian\";i:1;s:39:\"client-registration-confirmed-ukrainian\";i:1;s:34:\"contract-signed-to-staff-ukrainian\";i:1;s:38:\"customer-subscribed-to-staff-ukrainian\";i:1;s:36:\"contact-verification-email-ukrainian\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-ukrainian\";i:1;s:37:\"event-notification-to-staff-ukrainian\";i:1;s:46:\"subscription-payment-requires-action-ukrainian\";i:1;s:44:\"teampassword-share-link-to-contact-bulgarian\";i:1;s:42:\"teampassword-share-link-to-contact-catalan\";i:1;s:42:\"teampassword-share-link-to-contact-chinese\";i:1;s:40:\"teampassword-share-link-to-contact-czech\";i:1;s:40:\"teampassword-share-link-to-contact-dutch\";i:1;s:41:\"teampassword-share-link-to-contact-french\";i:1;s:41:\"teampassword-share-link-to-contact-german\";i:1;s:40:\"teampassword-share-link-to-contact-greek\";i:1;s:44:\"teampassword-share-link-to-contact-indonesia\";i:1;s:42:\"teampassword-share-link-to-contact-italian\";i:1;s:43:\"teampassword-share-link-to-contact-japanese\";i:1;s:42:\"teampassword-share-link-to-contact-persian\";i:1;s:41:\"teampassword-share-link-to-contact-polish\";i:1;s:45:\"teampassword-share-link-to-contact-portuguese\";i:1;s:48:\"teampassword-share-link-to-contact-portuguese_br\";i:1;s:43:\"teampassword-share-link-to-contact-romanian\";i:1;s:42:\"teampassword-share-link-to-contact-russian\";i:1;s:41:\"teampassword-share-link-to-contact-slovak\";i:1;s:42:\"teampassword-share-link-to-contact-spanish\";i:1;s:42:\"teampassword-share-link-to-contact-swedish\";i:1;s:42:\"teampassword-share-link-to-contact-turkish\";i:1;s:45:\"teampassword-share-link-to-contact-vietnamese\";i:1;}', 0);
INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(213, 'proposal_accept_identity_confirmation', '1', 0),
(214, 'estimate_accept_identity_confirmation', '1', 0),
(215, 'new_task_auto_follower_current_member', '0', 1),
(216, 'task_biillable_checked_on_creation', '0', 1),
(217, 'predefined_clientnote_credit_note', '', 1),
(218, 'predefined_terms_credit_note', '', 1),
(219, 'next_credit_note_number', '1', 1),
(220, 'credit_note_prefix', 'CN-', 1),
(221, 'credit_note_number_decrement_on_delete', '1', 1),
(222, 'pdf_format_credit_note', 'A4-PORTRAIT', 1),
(223, 'show_pdf_signature_credit_note', '1', 0),
(224, 'show_credit_note_reminders_on_calendar', '1', 1),
(225, 'show_amount_due_on_invoice', '1', 1),
(226, 'show_total_paid_on_invoice', '1', 1),
(227, 'show_credits_applied_on_invoice', '1', 1),
(228, 'staff_members_create_inline_lead_status', '1', 1),
(229, 'staff_members_create_inline_customer_groups', '1', 1),
(230, 'staff_members_create_inline_ticket_services', '1', 1),
(231, 'staff_members_save_tickets_predefined_replies', '1', 1),
(232, 'staff_members_create_inline_contract_types', '1', 1),
(233, 'staff_members_create_inline_expense_categories', '1', 1),
(234, 'show_project_on_credit_note', '1', 1),
(235, 'proposals_auto_operations_hour', '21', 1),
(236, 'estimates_auto_operations_hour', '21', 1),
(237, 'contracts_auto_operations_hour', '21', 1),
(238, 'credit_note_number_format', '1', 1),
(239, 'allow_non_admin_members_to_import_leads', '0', 1),
(240, 'e_sign_legal_text', 'By clicking on \"Sign\", I confirm that I am legally consent to be legally bound by this electronic representation of my signature. \r\n\r\nAny signature (including any electronic symbol or process attached to, or associated with, a contract or other record and adopted by a Person with the intent to sign, authenticate or accept such contract or record) hereto or to any other certificate, agreement or document related to this transaction, and any contract formation or record-keeping through electronic means shall have the same legal validity and enforceability as a manually executed signature or use of a paper-based recordkeeping system to the fullest extent permitted by applicable law of Canada.', 1),
(241, 'show_pdf_signature_contract', '1', 1),
(242, 'view_contract_only_logged_in', '0', 1),
(243, 'show_subscriptions_in_customers_area', '1', 1),
(244, 'calendar_only_assigned_tasks', '0', 1),
(245, 'after_subscription_payment_captured', 'send_invoice_and_receipt', 1),
(246, 'mail_engine', 'phpmailer', 1),
(247, 'gdpr_enable_terms_and_conditions', '0', 1),
(248, 'privacy_policy', '', 1),
(249, 'terms_and_conditions', '', 1),
(250, 'gdpr_enable_terms_and_conditions_lead_form', '0', 1),
(251, 'gdpr_enable_terms_and_conditions_ticket_form', '0', 1),
(252, 'gdpr_contact_enable_right_to_be_forgotten', '0', 1),
(253, 'show_gdpr_in_customers_menu', '1', 1),
(254, 'show_gdpr_link_in_footer', '1', 1),
(255, 'enable_gdpr', '1', 1),
(256, 'gdpr_on_forgotten_remove_invoices_credit_notes', '0', 1),
(257, 'gdpr_on_forgotten_remove_estimates', '0', 1),
(258, 'gdpr_enable_consent_for_contacts', '0', 1),
(259, 'gdpr_consent_public_page_top_block', '', 1),
(260, 'gdpr_page_top_information_block', '', 1),
(261, 'gdpr_enable_lead_public_form', '0', 1),
(262, 'gdpr_show_lead_custom_fields_on_public_form', '0', 1),
(263, 'gdpr_lead_attachments_on_public_form', '0', 1),
(264, 'gdpr_enable_consent_for_leads', '0', 1),
(265, 'gdpr_lead_enable_right_to_be_forgotten', '0', 1),
(266, 'allow_staff_view_invoices_assigned', '1', 1),
(267, 'gdpr_data_portability_leads', '0', 1),
(268, 'gdpr_lead_data_portability_allowed', '', 1),
(269, 'gdpr_contact_data_portability_allowed', '', 1),
(270, 'gdpr_data_portability_contacts', '0', 1),
(271, 'allow_staff_view_estimates_assigned', '1', 1),
(272, 'gdpr_after_lead_converted_delete', '0', 1),
(273, 'gdpr_show_terms_and_conditions_in_footer', '0', 1),
(274, 'save_last_order_for_tables', '0', 1),
(275, 'company_logo_dark', 'logo_dark.png', 1),
(276, 'customers_register_require_confirmation', '0', 1),
(277, 'allow_non_admin_staff_to_delete_ticket_attachments', '0', 1),
(278, 'receive_notification_on_new_ticket_replies', '1', 0),
(279, 'google_client_id', '', 1),
(280, 'enable_google_picker', '1', 1),
(281, 'show_ticket_reminders_on_calendar', '1', 1),
(282, 'ticket_import_reply_only', '0', 1),
(283, 'visible_customer_profile_tabs', 'all', 0),
(284, 'show_project_on_invoice', '1', 1),
(285, 'show_project_on_estimate', '1', 1),
(286, 'staff_members_create_inline_lead_source', '1', 1),
(287, 'lead_unique_validation', '[\"email\"]', 1),
(288, 'last_upgrade_copy_data', '', 1),
(289, 'custom_js_admin_scripts', '', 1),
(290, 'custom_js_customer_scripts', '0', 1),
(291, 'stripe_webhook_id', 'we_1Gan9g4309uSzfMPJrWSnquq', 1),
(292, 'stripe_webhook_signing_secret', 'whsec_YDaBZ5a0paffGtPhOd5aMUQddn2VLELP', 1),
(294, 'stripe_ideal_webhook_id', 'we_1GZOD94309uSzfMPrwgBcNJk', 1),
(295, 'stripe_ideal_webhook_signing_secret', 'whsec_NOCzpZTSErABcPCf0ibY91lKUfk5lWAO', 1),
(296, 'show_php_version_notice', '0', 0),
(297, 'sms_clickatell_api_key', '', 1),
(298, 'sms_clickatell_active', '0', 1),
(299, 'sms_clickatell_initialized', '1', 1),
(300, 'sms_msg91_sender_id', '', 1),
(301, 'sms_msg91_auth_key', '', 1),
(302, 'sms_msg91_active', '0', 1),
(303, 'sms_msg91_initialized', '1', 1),
(304, 'sms_twilio_account_sid', '', 1),
(305, 'sms_twilio_auth_token', '', 1),
(306, 'sms_twilio_phone_number', '', 1),
(307, 'sms_twilio_active', '0', 1),
(308, 'sms_twilio_initialized', '1', 1),
(309, 'paymentmethod_paypal_checkout_active', '0', 1),
(310, 'paymentmethod_paypal_checkout_label', 'Paypal Smart Checkout', 1),
(311, 'paymentmethod_paypal_checkout_client_id', '', 0),
(312, 'paymentmethod_paypal_checkout_secret', '', 0),
(313, 'paymentmethod_paypal_checkout_payment_description', 'Payment for Invoice {invoice_number}', 0),
(314, 'paymentmethod_paypal_checkout_currencies', 'USD,CAD,EUR', 0),
(315, 'paymentmethod_paypal_checkout_test_mode_enabled', '1', 0),
(316, 'paymentmethod_paypal_checkout_default_selected', '1', 1),
(317, 'paymentmethod_paypal_checkout_initialized', '1', 1),
(318, 'paymentmethod_paypal_braintree_active', '0', 1),
(319, 'paymentmethod_paypal_braintree_label', 'Braintree', 1),
(320, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
(321, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
(322, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
(323, 'paymentmethod_paypal_braintree_currencies', 'USD', 0),
(324, 'paymentmethod_paypal_braintree_paypal_enabled', '1', 0),
(325, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
(326, 'paymentmethod_paypal_braintree_default_selected', '1', 1),
(327, 'paymentmethod_paypal_braintree_initialized', '1', 1),
(328, 'paymentmethod_paypal_active', '0', 1),
(329, 'paymentmethod_paypal_label', 'Paypal', 1),
(330, 'paymentmethod_paypal_username', '', 0),
(331, 'paymentmethod_paypal_password', '', 0),
(332, 'paymentmethod_paypal_signature', '', 0),
(333, 'paymentmethod_paypal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(334, 'paymentmethod_paypal_currencies', 'EUR,USD', 0),
(335, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
(336, 'paymentmethod_paypal_default_selected', '1', 1),
(337, 'paymentmethod_paypal_initialized', '1', 1),
(338, 'paymentmethod_stripe_ideal_active', '0', 1),
(339, 'paymentmethod_stripe_ideal_label', 'Stripe iDEAL', 1),
(340, 'paymentmethod_stripe_ideal_api_secret_key', '028281ec7cbac4fce8605128f97c62b09291ead20527264d80c29c3d2a17206a7c988f38861af2e8a0c7cff2fb0bc20613832f1cb8485ea7d736cb69812dc922h3RUr2quTwYXrudjtmVGq4a6vZ3IifUi53aB0ZGHdWO878Xvxipv8bnAdVGaMuLHWv8BqIYXKkGCKXMvouAPMw==', 0),
(341, 'paymentmethod_stripe_ideal_api_publishable_key', 'pk_test_TiaizPsVHhH9hTfdDJaQpcFj', 0),
(342, 'paymentmethod_stripe_ideal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(343, 'paymentmethod_stripe_ideal_statement_descriptor', 'AIR {invoice_number}', 0),
(344, 'paymentmethod_stripe_ideal_currencies', 'EUR', 0),
(345, 'paymentmethod_stripe_ideal_default_selected', '1', 1),
(346, 'paymentmethod_stripe_ideal_initialized', '1', 1),
(347, 'paymentmethod_two_checkout_active', '0', 1),
(348, 'paymentmethod_two_checkout_label', '2Checkout', 1),
(349, 'paymentmethod_two_checkout_account_number', '', 0),
(350, 'paymentmethod_two_checkout_private_key', '', 0),
(351, 'paymentmethod_two_checkout_publishable_key', '', 0),
(352, 'paymentmethod_two_checkout_currencies', 'USD,EUR', 0),
(353, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0),
(354, 'paymentmethod_two_checkout_default_selected', '1', 1),
(355, 'paymentmethod_two_checkout_initialized', '1', 1),
(356, 'paymentmethod_authorize_aim_active', '0', 1),
(357, 'paymentmethod_authorize_aim_label', 'Authorize.net AIM', 1),
(358, 'paymentmethod_authorize_aim_api_login_id', '', 0),
(359, 'paymentmethod_authorize_aim_api_transaction_key', '', 0),
(360, 'paymentmethod_authorize_aim_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(361, 'paymentmethod_authorize_aim_currencies', 'USD', 0),
(362, 'paymentmethod_authorize_aim_test_mode_enabled', '0', 0),
(363, 'paymentmethod_authorize_aim_developer_mode_enabled', '1', 0),
(364, 'paymentmethod_authorize_aim_default_selected', '1', 1),
(365, 'paymentmethod_authorize_aim_initialized', '1', 1),
(366, 'paymentmethod_instamojo_active', '0', 1),
(367, 'paymentmethod_instamojo_label', 'Instamojo', 1),
(368, 'paymentmethod_instamojo_api_key', '', 0),
(369, 'paymentmethod_instamojo_auth_token', '', 0),
(370, 'paymentmethod_instamojo_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(371, 'paymentmethod_instamojo_currencies', 'INR', 0),
(372, 'paymentmethod_instamojo_test_mode_enabled', '1', 0),
(373, 'paymentmethod_instamojo_default_selected', '1', 1),
(374, 'paymentmethod_instamojo_initialized', '1', 1),
(375, 'paymentmethod_mollie_active', '0', 1),
(376, 'paymentmethod_mollie_label', 'Mollie', 1),
(377, 'paymentmethod_mollie_api_key', '', 0),
(378, 'paymentmethod_mollie_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(379, 'paymentmethod_mollie_currencies', 'EUR', 0),
(380, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
(381, 'paymentmethod_mollie_default_selected', '1', 1),
(382, 'paymentmethod_mollie_initialized', '1', 1),
(383, 'paymentmethod_payu_money_active', '0', 1),
(384, 'paymentmethod_payu_money_label', 'PayU Money', 1),
(385, 'paymentmethod_payu_money_key', '', 0),
(386, 'paymentmethod_payu_money_salt', '', 0),
(387, 'paymentmethod_payu_money_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(388, 'paymentmethod_payu_money_currencies', 'INR', 0),
(389, 'paymentmethod_payu_money_test_mode_enabled', '1', 0),
(390, 'paymentmethod_payu_money_default_selected', '1', 1),
(391, 'paymentmethod_payu_money_initialized', '1', 1),
(392, 'paymentmethod_authorize_sim_active', '0', 1),
(393, 'paymentmethod_authorize_sim_label', 'Authorize.net SIM', 1),
(394, 'paymentmethod_authorize_sim_api_login_id', '', 0),
(395, 'paymentmethod_authorize_sim_api_transaction_key', '', 0),
(396, 'paymentmethod_authorize_sim_api_secret_key', '', 0),
(397, 'paymentmethod_authorize_sim_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(398, 'paymentmethod_authorize_sim_currencies', 'USD', 0),
(399, 'paymentmethod_authorize_sim_test_mode_enabled', '0', 0),
(400, 'paymentmethod_authorize_sim_developer_mode_enabled', '1', 0),
(401, 'paymentmethod_authorize_sim_default_selected', '1', 1),
(402, 'paymentmethod_authorize_sim_initialized', '1', 1),
(403, 'paymentmethod_stripe_active', '0', 1),
(404, 'paymentmethod_stripe_label', 'Credit Card', 1),
(405, 'paymentmethod_stripe_api_secret_key', '', 0),
(406, 'paymentmethod_stripe_api_publishable_key', '', 0),
(407, 'paymentmethod_stripe_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(408, 'paymentmethod_stripe_currencies', 'USD,CAD', 0),
(409, 'paymentmethod_stripe_allow_primary_contact_to_update_credit_card', '1', 0),
(410, 'paymentmethod_stripe_default_selected', '1', 1),
(411, 'paymentmethod_stripe_initialized', '1', 1),
(412, 'aside_menu_active', '[]', 1),
(413, 'setup_menu_active', '[]', 1),
(414, 'survey_send_emails_per_cron_run', '100', 1),
(415, 'last_survey_send_cron', '', 1),
(416, 'auto_backup_enabled', '1', 1),
(417, 'auto_backup_every', '1', 1),
(418, 'last_auto_backup', '1603106771', 1),
(419, 'delete_backups_older_then', '365', 1),
(420, 'recaptcha_ignore_ips', '', 1),
(421, 'show_task_reminders_on_calendar', '1', 1),
(423, 'paymentmethod_authorize_acceptjs_active', '0', 1),
(424, 'paymentmethod_authorize_acceptjs_label', 'Authorize.net Accept.js', 1),
(425, 'paymentmethod_authorize_acceptjs_public_key', '', 0),
(426, 'paymentmethod_authorize_acceptjs_api_login_id', '', 0),
(427, 'paymentmethod_authorize_acceptjs_api_transaction_key', '', 0),
(428, 'paymentmethod_authorize_acceptjs_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(429, 'paymentmethod_authorize_acceptjs_currencies', 'USD', 0),
(430, 'paymentmethod_authorize_acceptjs_test_mode_enabled', '0', 0),
(431, 'paymentmethod_authorize_acceptjs_default_selected', '1', 1),
(432, 'paymentmethod_authorize_acceptjs_initialized', '1', 1),
(433, 'ultimate_dark_theme_customers', '1', 1),
(434, 'customer_settings', 'true', 1),
(435, 'sms_msg91_api_type', 'api', 1),
(436, 'team_password_security', 'KJSF-9FJ2-FKA02-SKKD0-ASSDGB-AK2JSDSF-AK28AKAJSHHD2-LOKO', 1),
(437, 'tasks_reminder_notification_hour', '21', 1),
(438, 'allow_primary_contact_to_manage_other_contacts', '0', 1),
(440, 'upgraded_from_version', '270', 1),
(441, 'backup_remove', '2', 1),
(442, 'backup_created_at', '2', 1),
(443, 'google_drive_client_id', 'sdfsadffsdfsdfsdfgfgdfgfdgdffgfdgdfgdffdgg', 1),
(444, 'google_drive_client_secret', 'fsdafsdafdsafasdffsdfsdafsdfsdffsdffdgdfg', 1),
(446, 'google_drive_redirect_uri', 'http://localhost/airmediaex/admin/crm_backup/google_drive/save_access_token', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_modes`
--

DROP TABLE IF EXISTS `tblpayment_modes`;
CREATE TABLE IF NOT EXISTS `tblpayment_modes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `show_on_pdf` int(11) NOT NULL DEFAULT 0,
  `invoices_only` int(11) NOT NULL DEFAULT 0,
  `expenses_only` int(11) NOT NULL DEFAULT 0,
  `selected_by_default` int(11) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpayment_modes`
--

INSERT INTO `tblpayment_modes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
(1, 'RBC Bank', 'Incoming wire Instructions:<br />\r\n<br />\r\nBeneficiary Bank: Royal Bank of Canada<br />\r\n<br />\r\nSWIFT: ROYCCAT2<br />\r\n<br />\r\nBank Address: 2947 BLOOR ST W, TORONTO ON M8X 1B8<br />\r\n<br />\r\nTransit #: 05362<br />\r\n<br />\r\nInstitution #: 003<br />\r\n<br />\r\nBeneficiary Acct #: 1020486<br />\r\n<br />\r\nBeneficiary Name#: LGHT INC.', 1, 1, 0, 1, 1),
(2, 'eTransfer', '', 0, 0, 1, 0, 1),
(3, 'Andrew Personal', '', 0, 0, 1, 0, 1),
(4, 'Igor Personal', '', 0, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpermission`
--

DROP TABLE IF EXISTS `tblpermission`;
CREATE TABLE IF NOT EXISTS `tblpermission` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff` int(11) DEFAULT NULL,
  `r` varchar(5) DEFAULT 'off',
  `w` varchar(5) DEFAULT 'off',
  `type` varchar(25) NOT NULL,
  `mgt_id` int(11) NOT NULL,
  `obj_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpermission`
--

INSERT INTO `tblpermission` (`id`, `staff`, `r`, `w`, `type`, `mgt_id`, `obj_id`) VALUES
(1, 2, 'on', 'on', 'email', 0, 1),
(2, 1, 'on', 'on', 'email', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpinned_projects`
--

DROP TABLE IF EXISTS `tblpinned_projects`;
CREATE TABLE IF NOT EXISTS `tblpinned_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussioncomments`
--

DROP TABLE IF EXISTS `tblprojectdiscussioncomments`;
CREATE TABLE IF NOT EXISTS `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `fullname` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblprojectdiscussioncomments`
--

INSERT INTO `tblprojectdiscussioncomments` (`id`, `discussion_id`, `discussion_type`, `parent`, `created`, `modified`, `content`, `staff_id`, `contact_id`, `fullname`, `file_name`, `file_mime_type`) VALUES
(1, 1, 'regular', NULL, '2020-08-24 00:08:07', NULL, '<h2>Tiered Accounts: Employees<br /><br /></h2>', 1, 0, 'Andrew Gordon', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussions`
--

DROP TABLE IF EXISTS `tblprojectdiscussions`;
CREATE TABLE IF NOT EXISTS `tblprojectdiscussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT 0,
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblprojectdiscussions`
--

INSERT INTO `tblprojectdiscussions` (`id`, `project_id`, `subject`, `description`, `show_to_customer`, `datecreated`, `last_activity`, `staff_id`, `contact_id`) VALUES
(1, 7, 'Features', '', 0, '2020-08-24 00:06:54', '2020-08-24 00:08:07', 1, 0),
(2, 7, 'Template', 'https://codecanyon.net/item/jobs-portal-job-board-laravel-script/22607607', 1, '2020-08-24 00:07:03', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblprojects`
--

DROP TABLE IF EXISTS `tblprojects`;
CREATE TABLE IF NOT EXISTS `tblprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT 0,
  `progress_from_tasks` int(11) NOT NULL DEFAULT 1,
  `project_cost` decimal(15,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(15,2) DEFAULT NULL,
  `estimated_hours` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblprojects`
--

INSERT INTO `tblprojects` (`id`, `name`, `description`, `status`, `clientid`, `billing_type`, `start_date`, `deadline`, `project_created`, `date_finished`, `progress`, `progress_from_tasks`, `project_cost`, `project_rate_per_hour`, `estimated_hours`, `addedfrom`) VALUES
(2, 'Reverse Margin Website', '', 2, 1, 1, '2020-04-22', '2020-09-30', '2020-04-22', NULL, 33, 1, '5892.95', '0.00', '110.00', 1),
(3, 'Reverse Margin ERP', '', 2, 1, 3, '2020-05-11', '2020-08-31', '2020-05-11', NULL, 0, 1, '0.00', '0.00', '223.90', 1),
(4, 'Dr. Emil - Dragon Webinar Series', 'Reverse Margin webinar series...', 2, 1, 3, '2020-05-11', '2020-11-15', '2020-05-12', NULL, 85, 1, '0.00', '0.00', '15.00', 2),
(5, 'Webinar - Email Rebranding Emergency Project', 'To take everything we have done with Reverse Margin and Brand it with Emil.', 4, 1, 2, '2020-07-10', '2020-07-20', '2020-07-17', '2020-08-01 16:39:00', 100, 1, '0.00', '65.00', '20.00', 1),
(6, 'RM Webinar Advertising', '', 4, 1, 1, '2020-07-28', '2020-08-14', '2020-07-28', '2020-08-15 22:45:31', 0, 1, '300.00', '0.00', '5.00', 1),
(7, 'Entertainment Job Bank', '', 1, 5, 2, '2020-08-24', '2020-11-21', '2020-08-24', NULL, 0, 1, '0.00', '0.00', '0.00', 1),
(8, 'J2 #PFX-Quote/Invoices', 'PERFEX Module:<br>\n<ul class=\"p-rich_text_list p-rich_text_list__bullet\">\n<li>ability to check mark categories to tack on boiler plate messages</li>\n<li>When PDF is exported the boiler plates are also at the bottom - see examples on invoice.</li>\n<li>Discounts per line item</li>\n<li>Groups</li>\n<li>Re-arrange Groups</li>\n<li>re-arrange items in groups (already exists, but must be able to do across multiple Groups.</li>\n<li>Shipping at Bottom</li>\n<li>Invoice per example previously communicated</li>\n<li>extended pricing</li>\n</ul>', 2, 3, 1, '2020-09-02', '2020-09-30', '2020-09-02', NULL, 0, 1, '2500.00', '0.00', '70.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_activity`
--

DROP TABLE IF EXISTS `tblproject_activity`;
CREATE TABLE IF NOT EXISTS `tblproject_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `description_key` varchar(191) NOT NULL COMMENT 'Language file key',
  `additional_data` text DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_activity`
--

INSERT INTO `tblproject_activity` (`id`, `project_id`, `staff_id`, `contact_id`, `fullname`, `visible_to_customer`, `description_key`, `additional_data`, `dateadded`) VALUES
(3, 2, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Andrew Gordon', '2020-04-22 21:40:28'),
(4, 2, 1, 0, 'Andrew Gordon', 1, 'project_activity_created', '', '2020-04-22 21:40:28'),
(5, 2, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Tom Liu', '2020-04-22 21:49:14'),
(6, 2, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Igor Silva', '2020-04-22 21:49:14'),
(7, 2, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-04-22 21:49:16'),
(8, 2, 2, 0, 'Igor Silva', 0, 'project_activity_created_milestone', 'Page Wireframe sign off', '2020-04-23 10:04:46'),
(9, 2, 2, 0, 'Igor Silva', 0, 'project_activity_updated_milestone', 'Page Wireframe sign off', '2020-04-23 10:05:02'),
(10, 2, 2, 0, 'Igor Silva', 0, 'project_activity_created_milestone', 'Overall website design approval (Home Page)', '2020-04-23 11:21:01'),
(11, 2, 2, 0, 'Igor Silva', 0, 'project_activity_created_milestone', 'Overall Website Sitemap Structure and Navigation flow', '2020-04-23 11:37:15'),
(12, 2, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Rebranding', '2020-04-23 11:44:44'),
(13, 2, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Information Gathering', '2020-04-23 11:45:40'),
(18, 3, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Igor Silva', '2020-05-11 20:40:05'),
(19, 3, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Haider Javaid', '2020-05-11 20:40:05'),
(20, 3, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Andrew Gordon', '2020-05-11 20:40:05'),
(21, 3, 1, 0, 'Andrew Gordon', 1, 'project_activity_created', '', '2020-05-11 20:40:06'),
(22, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Phase 1: Profiles', '2020-05-11 20:44:51'),
(23, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Phase 2: ', '2020-05-11 20:45:16'),
(24, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_updated_milestone', 'Phase 1: Profiles', '2020-05-11 20:45:37'),
(25, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Phase 3', '2020-05-11 20:45:52'),
(26, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_new_task_assignee', 'Profiles 1.1 - Haider Javaid', '2020-05-11 20:49:23'),
(27, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_assignee_removed', 'Profiles 1.1 - Andrew Gordon', '2020-05-11 20:49:34'),
(28, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_uploaded_file', 'PERFEX CRM EXTENDED MODULES.pdf', '2020-05-11 21:04:03'),
(29, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_uploaded_file', 'Air Media - Milestones.pdf', '2020-05-11 21:06:12'),
(30, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_uploaded_file', '8 May, 2020 - Loom Recording.mp4', '2020-05-11 21:07:57'),
(31, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Testing', '2020-05-11 21:23:18'),
(32, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'AIR Media Tests', '2020-05-11 21:26:18'),
(33, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Customization', '2020-05-11 21:29:00'),
(34, 4, 2, 0, 'Igor Silva', 1, 'project_activity_added_team_member', 'Tom Liu', '2020-05-12 15:58:13'),
(35, 4, 2, 0, 'Igor Silva', 1, 'project_activity_added_team_member', 'Igor Silva', '2020-05-12 15:58:13'),
(36, 4, 2, 0, 'Igor Silva', 1, 'project_activity_created', '', '2020-05-12 15:58:14'),
(37, 4, 2, 0, 'Igor Silva', 1, 'project_activity_updated', '', '2020-05-12 16:27:42'),
(38, 4, 2, 0, 'Igor Silva', 1, 'project_activity_added_team_member', 'Staff Igor Silva', '2020-05-12 16:29:57'),
(39, 4, 2, 0, 'Igor Silva', 1, 'project_activity_added_team_member', 'Cory Forde', '2020-05-12 16:29:57'),
(40, 4, 2, 0, 'Igor Silva', 1, 'project_activity_updated', '', '2020-05-12 16:29:59'),
(41, 4, 2, 0, 'Igor Silva', 1, 'project_activity_updated', '', '2020-05-12 16:39:52'),
(42, 4, 2, 0, 'Igor Silva', 1, 'project_activity_created_milestone', 'RM Webinar Landing Page Completion', '2020-05-12 16:43:01'),
(43, 4, 2, 0, 'Igor Silva', 1, 'project_activity_created_milestone', 'Hand RM\'s events/webinar system integrated with ZOOM', '2020-05-12 21:32:38'),
(44, 4, 2, 0, 'Igor Silva', 1, 'project_activity_new_task_assignee', 'Prepare Page Layout Banners and graphics - Staff Igor Silva', '2020-05-12 21:43:00'),
(45, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_assignee_removed', 'Prepare Page Layout Banners and graphics - Staff Igor Silva', '2020-05-12 21:50:11'),
(46, 4, 2, 0, 'Igor Silva', 1, 'project_activity_new_task_assignee', 'Prepare Page Layout Banners and graphics - Tom Liu', '2020-05-12 21:50:14'),
(47, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Get content from Christine', '2020-05-12 21:50:26'),
(48, 4, 2, 0, 'Igor Silva', 1, 'project_activity_updated', '', '2020-05-12 22:13:41'),
(49, 4, 2, 0, 'Igor Silva', 1, 'project_activity_created_milestone', 'Promotion and Advertising campaign Report', '2020-05-12 22:15:05'),
(50, 4, 2, 0, 'Igor Silva', 1, 'project_activity_updated', '', '2020-05-12 22:15:18'),
(51, 4, 2, 0, 'Igor Silva', 1, 'project_activity_updated_milestone', 'Promotion and Advertising campaign Report', '2020-05-12 22:15:40'),
(52, 4, 2, 0, 'Igor Silva', 1, 'project_activity_created_milestone', 'End to end testing', '2020-05-12 22:20:05'),
(53, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Desktop and Mobile Adjustments and testing - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:25:39'),
(54, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Integration with Zoom  Webinar 3rd party System - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:26:06'),
(55, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Front-end / Back-end test of settings, features and registration process - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:26:14'),
(56, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Set up Facebook and Google ads account - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:26:17'),
(57, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Prepare and Design ads content and posts - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:26:22'),
(58, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Schedule ads and budget - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:26:46'),
(59, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Ads Friday Report - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:26:54'),
(60, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Prepare all email notifications (CONTENT) - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:27:08'),
(61, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Create and Promote an event on website - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:27:22'),
(62, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Sign up and pay for webinar - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:27:28'),
(63, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Receive Zoom link and enter a session - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-12 22:27:33'),
(64, 4, 2, 0, 'Igor Silva', 1, 'project_activity_new_task_assignee', 'RM\'s Event/Webinar Management System - Cory Forde', '2020-05-12 22:28:32'),
(65, 4, 2, 0, 'Igor Silva', 1, 'project_activity_new_task_assignee', 'System integration with WooCommerce and a Payment Gateway - Cory Forde', '2020-05-12 22:28:41'),
(66, 4, 2, 0, 'Igor Silva', 1, 'project_activity_new_task_assignee', 'Integration with Zoom  Webinar 3rd party System - Cory Forde', '2020-05-12 22:28:52'),
(67, 4, 2, 0, 'Igor Silva', 1, 'project_activity_new_task_assignee', 'Front-end / Back-end test of settings, features and registration process - Cory Forde', '2020-05-12 22:29:00'),
(68, 4, 2, 0, 'Igor Silva', 1, 'project_activity_new_task_assignee', 'Prepare all email notifications (CONTENT) - Staff Igor Silva', '2020-05-12 22:29:34'),
(69, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Prepare all email notifications (CONTENT) - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-05-14 18:55:13'),
(70, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Prepare Page Layout Banners and graphics - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-05-14 18:55:36'),
(71, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Prepare all email notifications (CONTENT) - <span class=\"label\" style=\"border: 1px solid #989898;color:#989898;\">Not Started</span>', '2020-05-14 18:55:50'),
(72, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Create Email template for RM internal email sendouts - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-05-14 18:57:01'),
(73, 2, 2, 0, 'Igor Silva', 0, 'not_project_activity_task_status_changed', 'Produce updated RM 3D files and animations - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-08 08:56:54'),
(74, 2, 2, 0, 'Igor Silva', 0, 'project_activity_task_marked_complete', 'Get all 3D Files from Lab', '2020-06-08 08:58:12'),
(75, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'RM\'s Event/Webinar Management System - <span class=\"label\" style=\"border: 1px solid #2d2d2d;color:#2d2d2d;\">Testing</span>', '2020-06-08 08:59:34'),
(76, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'System integration with WooCommerce and a Payment Gateway - <span class=\"label\" style=\"border: 1px solid #2d2d2d;color:#2d2d2d;\">Testing</span>', '2020-06-08 08:59:37'),
(77, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Page development', '2020-06-08 08:59:48'),
(78, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Desktop and Mobile Adjustments and testing - <span class=\"label\" style=\"border: 1px solid #2d2d2d;color:#2d2d2d;\">Testing</span>', '2020-06-08 08:59:53'),
(79, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Integration with Zoom  Webinar 3rd party System - <span class=\"label\" style=\"border: 1px solid #2d2d2d;color:#2d2d2d;\">Testing</span>', '2020-06-08 08:59:57'),
(80, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Front-end / Back-end test of settings, features and registration process - <span class=\"label\" style=\"border: 1px solid #2d2d2d;color:#2d2d2d;\">Testing</span>', '2020-06-08 09:00:07'),
(81, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Set up Facebook and Google ads account - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-08 09:00:13'),
(82, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Prepare all email notifications (CONTENT) - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-08 09:00:36'),
(83, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Sign up and pay for webinar', '2020-06-08 09:00:49'),
(84, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_unmarked_complete', 'Sign up and pay for webinar', '2020-06-08 09:00:52'),
(85, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Sign up and pay for webinar - <span class=\"label\" style=\"border: 1px solid #2d2d2d;color:#2d2d2d;\">Testing</span>', '2020-06-08 09:00:54'),
(86, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Prepare Page Layout Banners and graphics', '2020-06-08 14:42:31'),
(87, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Profiles 1.1 - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:01'),
(88, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Contacts - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:04'),
(89, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Notes - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:04'),
(90, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Proposal - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:05'),
(91, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Estimates - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:07'),
(92, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Activity - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:08'),
(93, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Profile Permissions - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:10'),
(94, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Call Logs - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:11'),
(95, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Expenses - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:38:15'),
(96, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Tasks - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-15 13:38:17'),
(97, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Files - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-15 13:38:24'),
(98, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Team  - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-15 13:38:25'),
(99, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Phase 1 Tests - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-15 13:38:27'),
(100, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Phase 2 Tests - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-15 13:38:28'),
(101, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Phase 3 Tests - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-15 13:38:29'),
(102, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Opportunity Module Tests - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-15 13:38:30'),
(103, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Sales Journey Tests - <span class=\"label\" style=\"border: 1px solid #03A9F4;color:#03A9F4;\">In Progress</span>', '2020-06-15 13:38:31'),
(104, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Profiles 1.1', '2020-06-15 13:38:47'),
(105, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Expenses', '2020-06-15 13:39:01'),
(106, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Notes', '2020-06-15 13:39:02'),
(107, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Profile Permissions', '2020-06-15 13:39:03'),
(108, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Activity', '2020-06-15 13:39:04'),
(109, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Estimates', '2020-06-15 13:39:05'),
(110, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Proposal', '2020-06-15 13:39:06'),
(111, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Contacts', '2020-06-15 13:39:07'),
(112, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Call Logs', '2020-06-15 13:39:08'),
(113, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Tasks', '2020-06-15 13:39:11'),
(114, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Team ', '2020-06-15 13:39:12'),
(115, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Sales Journey Tests', '2020-06-15 13:39:13'),
(116, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Opportunity Module Tests', '2020-06-15 13:39:15'),
(117, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Phase 2 Tests', '2020-06-15 13:39:17'),
(118, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Phase 3 Tests', '2020-06-15 13:39:18'),
(119, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Phase 1 Tests - <span class=\"label\" style=\"border: 1px solid #adca65;color:#adca65;\">Awaiting Feedback</span>', '2020-06-15 13:39:21'),
(120, 3, 1, 0, 'Andrew Gordon', 0, 'not_project_activity_task_status_changed', 'Files - <span class=\"label\" style=\"border: 1px solid #2d2d2d;color:#2d2d2d;\">Testing</span>', '2020-06-15 13:39:23'),
(121, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Phase 1 Tests', '2020-06-15 13:39:25'),
(122, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Files', '2020-06-15 13:39:26'),
(123, 3, 1, 0, 'Andrew Gordon', 1, 'project_activity_invoiced_project', 'AIR-INV-0078-20', '2020-06-15 13:43:56'),
(124, 4, 1, 0, 'Andrew Gordon', 1, 'project_activity_recorded_expense', 'Contractors<br />$200.00', '2020-06-29 21:46:40'),
(125, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Staff Igor Silva', '2020-07-17 15:29:08'),
(126, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Andrew Gordon', '2020-07-17 15:29:08'),
(127, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_created', '', '2020-07-17 15:29:09'),
(128, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-07-17 15:29:36'),
(129, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-07-17 15:30:53'),
(130, 5, 1, 0, 'Andrew Gordon', 1, 'project_status_updated', '<b><lang>project_status_1</lang></b>', '2020-07-17 15:52:36'),
(131, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-07-17 15:54:28'),
(132, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Domain', '2020-07-17 15:54:45'),
(133, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Email Routing', '2020-07-17 15:54:59'),
(134, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Graphics', '2020-07-17 15:55:41'),
(135, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Testing', '2020-07-17 16:13:45'),
(136, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'GSuite Setup', '2020-07-21 15:11:08'),
(137, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Shortener', '2020-07-21 20:58:47'),
(138, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'QR Code', '2020-07-21 20:58:52'),
(139, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Link Test', '2020-07-21 20:58:56'),
(140, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>900</seconds><br /><lang>project_activity_task_name</lang> Email Setup', '2020-07-22 21:43:36'),
(141, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>1200</seconds><br /><lang>project_activity_task_name</lang> Email Setup', '2020-07-22 21:43:49'),
(142, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>60</seconds><br /><lang>project_activity_task_name</lang> Email Setup', '2020-07-22 21:43:56'),
(143, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>1200</seconds><br /><lang>project_activity_task_name</lang> Cloud Flare', '2020-07-22 21:44:52'),
(144, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Email Setup', '2020-07-22 21:46:30'),
(145, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Cloud Flare', '2020-07-22 21:46:30'),
(146, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>8100</seconds><br /><lang>project_activity_task_name</lang> Email Template', '2020-07-22 21:47:47'),
(147, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>4500</seconds><br /><lang>project_activity_task_name</lang> Email Template', '2020-07-22 21:48:13'),
(148, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Email Template', '2020-07-22 21:48:52'),
(149, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Create Email template for RM internal email sendouts', '2020-07-28 00:06:31'),
(150, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Integration with Zoom  Webinar 3rd party System', '2020-07-28 00:06:44'),
(151, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Front-end / Back-end test of settings, features and registration process', '2020-07-28 00:06:49'),
(152, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Desktop and Mobile Adjustments and testing', '2020-07-28 00:06:59'),
(153, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'RM\'s Event/Webinar Management System', '2020-07-28 00:07:10'),
(154, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Set up Facebook and Google ads account', '2020-07-28 00:07:20'),
(155, 4, 2, 0, 'Igor Silva', 1, 'not_project_activity_task_status_changed', 'Schedule ads and budget - <span class=\"label\" style=\"border: 1px solid #1b99c8;color:#1b99c8;\">In Progress</span>', '2020-07-28 00:07:28'),
(156, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Create and Promote an event on website', '2020-07-28 00:08:03'),
(157, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Sign up and pay for webinar', '2020-07-28 00:08:28'),
(158, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Prepare all email notifications (CONTENT)', '2020-07-28 00:09:25'),
(159, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Schedule ads and budget', '2020-07-28 00:10:41'),
(160, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Receive Zoom link and enter a session', '2020-07-28 00:11:16'),
(161, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Prepare and Design ads content and posts', '2020-07-28 00:11:52'),
(162, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_marked_complete', 'Ads Friday Report', '2020-07-28 00:12:32'),
(163, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_unmarked_complete', 'Receive Zoom link and enter a session', '2020-07-28 00:13:15'),
(164, 4, 2, 0, 'Igor Silva', 1, 'project_activity_task_unmarked_complete', 'Ads Friday Report', '2020-07-28 00:13:15'),
(165, 5, 2, 0, 'Igor Silva', 1, 'project_activity_removed_team_member', 'Staff Igor Silva', '2020-07-28 00:14:47'),
(166, 5, 2, 0, 'Igor Silva', 1, 'project_activity_added_team_member', 'Igor Silva', '2020-07-28 00:14:58'),
(167, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>7200</seconds><br /><lang>project_activity_task_name</lang> Webinar Page content and layout update 1', '2020-07-28 00:39:16'),
(168, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>10800</seconds><br /><lang>project_activity_task_name</lang> Webinar Page content and layout update 1', '2020-07-28 00:43:17'),
(169, 5, 2, 0, 'Igor Silva', 0, 'project_activity_task_timesheet_deleted', 'Webinar Page content and layout update 1<br /><seconds>7200</seconds>', '2020-07-28 00:45:17'),
(170, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>7200</seconds><br /><lang>project_activity_task_name</lang> Webinar Page content and layout update 1', '2020-07-28 00:47:12'),
(171, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>9000</seconds><br /><lang>project_activity_task_name</lang> Webinar Page content and layout update 1', '2020-07-28 00:54:11'),
(172, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>7200</seconds><br /><lang>project_activity_task_name</lang> Webinar Page content and layout update 1', '2020-07-28 00:57:19'),
(173, 5, 2, 0, 'Igor Silva', 0, 'project_activity_task_timesheet_deleted', 'Webinar Page content and layout update 1<br /><seconds>9000</seconds>', '2020-07-28 00:57:34'),
(174, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>7200</seconds><br /><lang>project_activity_task_name</lang> Webinar Page content and layout update 1', '2020-07-28 00:59:05'),
(175, 5, 2, 0, 'Igor Silva', 0, 'project_activity_task_timesheet_deleted', 'Webinar Page content and layout update 1<br /><seconds>7200</seconds>', '2020-07-28 00:59:37'),
(176, 5, 2, 0, 'Igor Silva', 0, 'project_activity_task_marked_complete', 'Webinar Page content and layout update x 3', '2020-07-28 01:03:26'),
(177, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>18000</seconds><br /><lang>project_activity_task_name</lang> Webinar Page Emergency Overhaul - Eventbrite Setup', '2020-07-28 01:08:08'),
(178, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>10800</seconds><br /><lang>project_activity_task_name</lang> Webinar Eventbrite New Ads strategy pixel setup', '2020-07-28 01:14:34'),
(179, 5, 2, 0, 'Igor Silva', 0, 'project_activity_task_marked_complete', 'Webinar Page Emergency Overhaul - Eventbrite Setup', '2020-07-28 01:15:24'),
(180, 5, 2, 0, 'Igor Silva', 0, 'project_activity_task_marked_complete', 'Webinar Eventbrite New Ads strategy pixel setup', '2020-07-28 01:15:49'),
(181, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-07-28 11:57:26'),
(182, 5, 1, 0, 'Andrew Gordon', 1, 'project_status_updated', '<b><lang>project_status_2</lang></b>', '2020-07-28 11:57:27'),
(183, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'GSuite Setup', '2020-07-28 12:03:40'),
(184, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> GSuite Setup', '2020-07-28 12:04:34'),
(185, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> GSuite Setup', '2020-07-28 12:04:56'),
(186, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'GSuite Setup', '2020-07-28 12:05:00'),
(187, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_deleted', 'DNSSEC', '2020-07-28 12:07:00'),
(188, 6, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Andrew Gordon', '2020-07-28 12:13:10'),
(189, 6, 1, 0, 'Andrew Gordon', 1, 'project_activity_created', '', '2020-07-28 12:13:11'),
(190, 5, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_expense', 'Customer\'s Advertising Budget<br />$341.30', '2020-07-28 14:51:55'),
(191, 6, 2, 0, 'Igor Silva', 0, 'project_activity_task_timesheet_deleted', 'Webinar ads rebranding<br /><seconds>3936</seconds>', '2020-07-28 16:32:44'),
(192, 6, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>2700</seconds><br /><lang>project_activity_task_name</lang> Webinar ads rebranding', '2020-07-28 16:33:38'),
(193, 5, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_deleted', 'Webinar Ads - Dedicated Budget to Ads CPI and CPC', '2020-07-31 14:53:06'),
(194, 3, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-07-31 15:09:57'),
(195, 4, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-07-31 15:28:33'),
(196, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_invoiced_project', 'AIR-INV-0079-20', '2020-07-31 15:45:34'),
(197, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-08-01 16:38:34'),
(198, 5, 1, 0, 'Andrew Gordon', 1, 'project_marked_as_finished', '', '2020-08-01 16:39:00'),
(199, 5, 1, 0, 'Andrew Gordon', 1, 'project_activity_marked_all_tasks_as_complete', '', '2020-08-01 16:39:00'),
(200, 6, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-08-06 16:17:44'),
(201, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'EBLAST: Palmeri', '2020-08-06 16:19:16'),
(202, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'EBLAST: Dental Speaker Bureau', '2020-08-06 16:20:15'),
(203, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'EBLAST: Palmeri 3', '2020-08-06 16:25:39'),
(204, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'EBLAST: Dental Speakers Burearu', '2020-08-06 16:28:38'),
(205, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'EBLAST: Palmeri 2', '2020-08-06 16:28:57'),
(206, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_expense', 'Contractors<br />$1,266.77', '2020-08-10 22:50:29'),
(207, 3, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-08-10 22:54:39'),
(208, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Profile Permissions', '2020-08-10 22:55:17'),
(209, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Profiles 1.1', '2020-08-10 22:55:17'),
(210, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Contacts', '2020-08-10 22:55:19'),
(211, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Notes', '2020-08-10 22:55:19'),
(212, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Proposal', '2020-08-10 22:55:19'),
(213, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Estimates', '2020-08-10 22:55:19'),
(214, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Expenses', '2020-08-10 22:55:19'),
(215, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Tasks', '2020-08-10 22:55:19'),
(216, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Files', '2020-08-10 22:55:20'),
(217, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Team ', '2020-08-10 22:55:20'),
(218, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Activity', '2020-08-10 22:55:20'),
(219, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Phase 1 Tests', '2020-08-10 22:55:20'),
(220, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Phase 2 Tests', '2020-08-10 22:55:20'),
(221, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Phase 3 Tests', '2020-08-10 22:55:20'),
(222, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Opportunity Module Tests', '2020-08-10 22:55:20'),
(223, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Sales Journey Tests', '2020-08-10 22:55:20'),
(224, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_unmarked_complete', 'Call Logs', '2020-08-10 22:55:20'),
(225, 3, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-08-10 22:55:37'),
(226, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_deleted', 'EBLAST: DENTAL SPEAKERS BUREAU', '2020-08-15 22:36:53'),
(227, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> Webinar ads rebranding', '2020-08-15 22:41:41'),
(228, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>2700</seconds><br /><lang>project_activity_task_name</lang> Webinar ads rebranding', '2020-08-15 22:42:13'),
(229, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Webinar ads rebranding', '2020-08-15 22:42:35'),
(230, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>2700</seconds><br /><lang>project_activity_task_name</lang> Webinar Ads Admin', '2020-08-15 22:43:43'),
(231, 6, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Webinar Ads Admin', '2020-08-15 22:44:03'),
(232, 6, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Igor Silva', '2020-08-15 22:44:42'),
(233, 6, 1, 0, 'Andrew Gordon', 1, 'project_marked_as_finished', '', '2020-08-15 22:45:31'),
(234, 6, 1, 0, 'Andrew Gordon', 1, 'project_activity_marked_all_tasks_as_complete', '', '2020-08-15 22:45:31'),
(235, 2, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-08-15 22:48:57'),
(236, 4, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-08-23 23:19:20'),
(237, 4, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Andrew Gordon', '2020-08-23 23:21:38'),
(238, 4, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated', '', '2020-08-23 23:21:38'),
(239, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_new_task_assignee', 'Meetings - Igor Silva', '2020-08-23 23:22:01'),
(240, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_new_task_assignee', 'Meetings - Andrew Gordon', '2020-08-23 23:22:04'),
(241, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>867600</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:22:59'),
(242, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:23:57'),
(243, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_timesheet_deleted', 'Meetings<br /><seconds>3600</seconds>', '2020-08-23 23:24:07'),
(244, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_timesheet_deleted', 'Meetings<br /><seconds>867600</seconds>', '2020-08-23 23:24:10'),
(245, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:24:38'),
(246, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:24:49'),
(247, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:25:22'),
(248, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:25:53'),
(249, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:26:20'),
(250, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3600</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:26:55'),
(251, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_timesheet_deleted', 'Pre Meeting<br /><seconds>8</seconds>', '2020-08-23 23:28:08'),
(252, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>8100</seconds><br /><lang>project_activity_task_name</lang> Pre Meeting', '2020-08-23 23:28:51'),
(253, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_new_task_assignee', 'Pre Meeting - Igor Silva', '2020-08-23 23:28:55'),
(254, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>7200</seconds><br /><lang>project_activity_task_name</lang> Pre Meeting', '2020-08-23 23:29:25'),
(255, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>3000</seconds><br /><lang>project_activity_task_name</lang> Meetings', '2020-08-23 23:31:55'),
(256, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_new_task_assignee', 'Seminar Management - Igor Silva', '2020-08-23 23:33:12'),
(257, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>9000</seconds><br /><lang>project_activity_task_name</lang> Seminar Management', '2020-08-23 23:33:41'),
(258, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>9000</seconds><br /><lang>project_activity_task_name</lang> Seminar Management', '2020-08-23 23:33:55'),
(259, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>9000</seconds><br /><lang>project_activity_task_name</lang> Seminar Management', '2020-08-23 23:34:11'),
(260, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>9000</seconds><br /><lang>project_activity_task_name</lang> Seminar Management', '2020-08-23 23:34:28'),
(261, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_timesheet', '<seconds>9000</seconds><br /><lang>project_activity_task_name</lang> Seminar Management', '2020-08-23 23:34:36'),
(262, 4, 1, 0, 'Andrew Gordon', 0, 'project_activity_task_marked_complete', 'Seminar Management', '2020-08-23 23:35:06'),
(263, 7, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Igor Silva', '2020-08-24 00:02:52'),
(264, 7, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Andrew Gordon', '2020-08-24 00:02:52'),
(265, 7, 1, 0, 'Andrew Gordon', 1, 'project_activity_created', '', '2020-08-24 00:02:54'),
(266, 7, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Planning', '2020-08-24 00:03:16'),
(267, 7, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Design', '2020-08-24 00:03:33'),
(268, 7, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Branding', '2020-08-24 00:04:29'),
(269, 7, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Development: Phase 1', '2020-08-24 00:05:08'),
(270, 7, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Testing', '2020-08-24 00:05:19'),
(271, 7, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_discussion', 'Features', '2020-08-24 00:06:55'),
(272, 7, 1, 0, 'Andrew Gordon', 1, 'project_activity_created_discussion', 'Template', '2020-08-24 00:07:04'),
(273, 7, 1, 0, 'Andrew Gordon', 1, 'project_activity_updated_discussion', 'Template', '2020-08-24 00:07:09'),
(274, 7, 1, 0, 'Andrew Gordon', 0, 'project_activity_commented_on_discussion', 'Features', '2020-08-24 00:08:07'),
(275, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_expense', 'Contractors<br />$5.00', '2020-08-29 20:53:13'),
(276, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_expense', 'Contractors<br />$34.00', '2020-08-29 20:55:51'),
(277, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_expense', 'Contractors<br />$24.00', '2020-08-29 21:01:29'),
(278, 3, 1, 0, 'Andrew Gordon', 0, 'project_activity_recorded_expense', 'Contractors<br />$74.25', '2020-08-29 21:06:50'),
(279, 4, 2, 0, 'Igor Silva', 0, 'project_activity_task_timesheet_deleted', 'Setup protected video hosting for customer\'s 90 day access<br /><seconds>9</seconds>', '2020-08-31 20:21:38'),
(280, 4, 2, 0, 'Igor Silva', 0, 'project_activity_recorded_timesheet', '<seconds>7200</seconds><br /><lang>project_activity_task_name</lang> Setup protected video hosting for customer\'s 90 day access', '2020-08-31 20:22:39'),
(281, 4, 2, 0, 'Igor Silva', 1, 'project_activity_updated', '', '2020-08-31 20:24:01'),
(282, 8, 1, 0, 'Andrew Gordon', 1, 'project_activity_added_team_member', 'Andrew Gordon', '2020-09-02 16:37:08'),
(283, 8, 1, 0, 'Andrew Gordon', 1, 'project_activity_created', '', '2020-09-02 16:37:09'),
(284, 8, 1, 0, 'Andrew Gordon', 0, 'project_activity_created_milestone', 'Testing', '2020-09-02 16:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_files`
--

DROP TABLE IF EXISTS `tblproject_files`;
CREATE TABLE IF NOT EXISTS `tblproject_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(191) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT 0,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text DEFAULT NULL,
  `thumbnail_link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_files`
--

INSERT INTO `tblproject_files` (`id`, `file_name`, `subject`, `description`, `filetype`, `dateadded`, `last_activity`, `project_id`, `visible_to_customer`, `staffid`, `contact_id`, `external`, `external_link`, `thumbnail_link`) VALUES
(1, 'PERFEX CRM EXTENDED MODULES.pdf', 'PERFEX CRM EXTENDED MODULES.pdf', NULL, 'application/pdf', '2020-05-11 21:04:03', NULL, 3, 0, 1, 0, NULL, NULL, NULL),
(2, 'Air Media - Milestones.pdf', 'Air Media - Milestones.pdf', NULL, 'application/pdf', '2020-05-11 21:06:12', NULL, 3, 0, 1, 0, NULL, NULL, NULL),
(3, '8 May, 2020 - Loom Recording.mp4', '8 May, 2020 - Loom Recording.mp4', NULL, 'video/mp4', '2020-05-11 21:07:57', NULL, 3, 0, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_members`
--

DROP TABLE IF EXISTS `tblproject_members`;
CREATE TABLE IF NOT EXISTS `tblproject_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_members`
--

INSERT INTO `tblproject_members` (`id`, `project_id`, `staff_id`) VALUES
(2, 2, 1),
(3, 2, 3),
(4, 2, 2),
(7, 3, 2),
(8, 3, 4),
(9, 3, 1),
(10, 4, 3),
(11, 4, 2),
(12, 4, 6),
(13, 4, 5),
(15, 5, 1),
(16, 5, 2),
(17, 6, 1),
(18, 6, 2),
(19, 4, 1),
(20, 7, 2),
(21, 7, 1),
(22, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_notes`
--

DROP TABLE IF EXISTS `tblproject_notes`;
CREATE TABLE IF NOT EXISTS `tblproject_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_settings`
--

DROP TABLE IF EXISTS `tblproject_settings`;
CREATE TABLE IF NOT EXISTS `tblproject_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_settings`
--

INSERT INTO `tblproject_settings` (`id`, `project_id`, `name`, `value`) VALUES
(20, 2, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;s:16:\"project_invoices\";i:0;s:17:\"project_estimates\";i:0;s:16:\"project_expenses\";i:0;s:20:\"project_credit_notes\";i:0;s:21:\"project_subscriptions\";i:0;}'),
(21, 2, 'view_tasks', '0'),
(22, 2, 'create_tasks', '0'),
(23, 2, 'edit_tasks', '0'),
(24, 2, 'comment_on_tasks', '0'),
(25, 2, 'view_task_comments', '0'),
(26, 2, 'view_task_attachments', '0'),
(27, 2, 'view_task_checklist_items', '0'),
(28, 2, 'upload_on_tasks', '0'),
(29, 2, 'view_task_total_logged_time', '0'),
(30, 2, 'view_finance_overview', '1'),
(31, 2, 'upload_files', '0'),
(32, 2, 'open_discussions', '0'),
(33, 2, 'view_milestones', '0'),
(34, 2, 'view_gantt', '0'),
(35, 2, 'view_timesheets', '0'),
(36, 2, 'view_activity_log', '0'),
(37, 2, 'view_team_members', '1'),
(38, 2, 'hide_tasks_on_main_tasks_table', '0'),
(39, 3, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:16:\"project_invoices\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_expenses\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;s:17:\"project_contracts\";i:0;s:20:\"project_credit_notes\";i:0;s:21:\"project_subscriptions\";i:0;}'),
(40, 3, 'view_tasks', '0'),
(41, 3, 'create_tasks', '0'),
(42, 3, 'edit_tasks', '0'),
(43, 3, 'comment_on_tasks', '0'),
(44, 3, 'view_task_comments', '0'),
(45, 3, 'view_task_attachments', '0'),
(46, 3, 'view_task_checklist_items', '0'),
(47, 3, 'upload_on_tasks', '0'),
(48, 3, 'view_task_total_logged_time', '0'),
(49, 3, 'view_finance_overview', '0'),
(50, 3, 'upload_files', '0'),
(51, 3, 'open_discussions', '0'),
(52, 3, 'view_milestones', '0'),
(53, 3, 'view_gantt', '0'),
(54, 3, 'view_timesheets', '0'),
(55, 3, 'view_activity_log', '0'),
(56, 3, 'view_team_members', '0'),
(57, 3, 'hide_tasks_on_main_tasks_table', '0'),
(58, 4, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_gantt\";i:1;s:17:\"project_contracts\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;s:13:\"project_files\";i:0;s:19:\"project_discussions\";i:0;s:15:\"project_tickets\";i:0;s:16:\"project_invoices\";i:0;s:17:\"project_estimates\";i:0;s:16:\"project_expenses\";i:0;s:20:\"project_credit_notes\";i:0;s:21:\"project_subscriptions\";i:0;}'),
(59, 4, 'view_tasks', '1'),
(60, 4, 'create_tasks', '0'),
(61, 4, 'edit_tasks', '0'),
(62, 4, 'comment_on_tasks', '0'),
(63, 4, 'view_task_comments', '0'),
(64, 4, 'view_task_attachments', '0'),
(65, 4, 'view_task_checklist_items', '1'),
(66, 4, 'upload_on_tasks', '0'),
(67, 4, 'view_task_total_logged_time', '0'),
(68, 4, 'view_finance_overview', '1'),
(69, 4, 'upload_files', '0'),
(70, 4, 'open_discussions', '0'),
(71, 4, 'view_milestones', '1'),
(72, 4, 'view_gantt', '0'),
(73, 4, 'view_timesheets', '0'),
(74, 4, 'view_activity_log', '0'),
(75, 4, 'view_team_members', '0'),
(76, 4, 'hide_tasks_on_main_tasks_table', '0'),
(77, 5, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:16:\"project_invoices\";i:1;s:16:\"project_expenses\";i:1;s:13:\"project_gantt\";i:0;s:15:\"project_tickets\";i:0;s:17:\"project_contracts\";i:0;s:17:\"project_estimates\";i:0;s:20:\"project_credit_notes\";i:0;s:21:\"project_subscriptions\";i:0;s:13:\"project_notes\";i:0;s:16:\"project_activity\";i:0;}'),
(78, 5, 'view_tasks', '0'),
(79, 5, 'create_tasks', '0'),
(80, 5, 'edit_tasks', '0'),
(81, 5, 'comment_on_tasks', '0'),
(82, 5, 'view_task_comments', '0'),
(83, 5, 'view_task_attachments', '0'),
(84, 5, 'view_task_checklist_items', '0'),
(85, 5, 'upload_on_tasks', '0'),
(86, 5, 'view_task_total_logged_time', '0'),
(87, 5, 'view_finance_overview', '0'),
(88, 5, 'upload_files', '0'),
(89, 5, 'open_discussions', '0'),
(90, 5, 'view_milestones', '0'),
(91, 5, 'view_gantt', '0'),
(92, 5, 'view_timesheets', '0'),
(93, 5, 'view_activity_log', '0'),
(94, 5, 'view_team_members', '0'),
(95, 5, 'hide_tasks_on_main_tasks_table', '0'),
(96, 6, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:16:\"project_invoices\";i:1;s:16:\"project_expenses\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;s:15:\"project_tickets\";i:0;s:17:\"project_contracts\";i:0;s:17:\"project_estimates\";i:0;s:20:\"project_credit_notes\";i:0;s:21:\"project_subscriptions\";i:0;}'),
(97, 6, 'view_tasks', '0'),
(98, 6, 'create_tasks', '0'),
(99, 6, 'edit_tasks', '0'),
(100, 6, 'comment_on_tasks', '0'),
(101, 6, 'view_task_comments', '0'),
(102, 6, 'view_task_attachments', '0'),
(103, 6, 'view_task_checklist_items', '0'),
(104, 6, 'upload_on_tasks', '0'),
(105, 6, 'view_task_total_logged_time', '0'),
(106, 6, 'view_finance_overview', '0'),
(107, 6, 'upload_files', '0'),
(108, 6, 'open_discussions', '0'),
(109, 6, 'view_milestones', '0'),
(110, 6, 'view_gantt', '0'),
(111, 6, 'view_timesheets', '0'),
(112, 6, 'view_activity_log', '0'),
(113, 6, 'view_team_members', '0'),
(114, 6, 'hide_tasks_on_main_tasks_table', '0'),
(115, 7, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:16:\"project_expenses\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;s:15:\"project_tickets\";i:0;s:17:\"project_contracts\";i:0;s:16:\"project_invoices\";i:0;s:17:\"project_estimates\";i:0;s:20:\"project_credit_notes\";i:0;s:21:\"project_subscriptions\";i:0;}'),
(116, 7, 'view_tasks', '0'),
(117, 7, 'create_tasks', '0'),
(118, 7, 'edit_tasks', '0'),
(119, 7, 'comment_on_tasks', '0'),
(120, 7, 'view_task_comments', '0'),
(121, 7, 'view_task_attachments', '0'),
(122, 7, 'view_task_checklist_items', '0'),
(123, 7, 'upload_on_tasks', '0'),
(124, 7, 'view_task_total_logged_time', '0'),
(125, 7, 'view_finance_overview', '0'),
(126, 7, 'upload_files', '0'),
(127, 7, 'open_discussions', '0'),
(128, 7, 'view_milestones', '0'),
(129, 7, 'view_gantt', '0'),
(130, 7, 'view_timesheets', '0'),
(131, 7, 'view_activity_log', '0'),
(132, 7, 'view_team_members', '0'),
(133, 7, 'hide_tasks_on_main_tasks_table', '0'),
(134, 8, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:16:\"project_expenses\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;s:15:\"project_tickets\";i:0;s:17:\"project_contracts\";i:0;s:16:\"project_invoices\";i:0;s:17:\"project_estimates\";i:0;s:20:\"project_credit_notes\";i:0;s:21:\"project_subscriptions\";i:0;}'),
(135, 8, 'view_tasks', '0'),
(136, 8, 'create_tasks', '0'),
(137, 8, 'edit_tasks', '0'),
(138, 8, 'comment_on_tasks', '0'),
(139, 8, 'view_task_comments', '0'),
(140, 8, 'view_task_attachments', '0'),
(141, 8, 'view_task_checklist_items', '0'),
(142, 8, 'upload_on_tasks', '0'),
(143, 8, 'view_task_total_logged_time', '0'),
(144, 8, 'view_finance_overview', '0'),
(145, 8, 'upload_files', '0'),
(146, 8, 'open_discussions', '0'),
(147, 8, 'view_milestones', '0'),
(148, 8, 'view_gantt', '0'),
(149, 8, 'view_timesheets', '0'),
(150, 8, 'view_activity_log', '0'),
(151, 8, 'view_team_members', '0'),
(152, 8, 'hide_tasks_on_main_tasks_table', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblproposals`
--

DROP TABLE IF EXISTS `tblproposals`;
CREATE TABLE IF NOT EXISTS `tblproposals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) NOT NULL,
  `discount_total` decimal(15,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(191) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT 0,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproposals`
--

INSERT INTO `tblproposals` (`id`, `subject`, `content`, `addedfrom`, `datecreated`, `total`, `subtotal`, `total_tax`, `adjustment`, `discount_percent`, `discount_total`, `discount_type`, `show_quantity_as`, `currency`, `open_till`, `date`, `rel_id`, `rel_type`, `assigned`, `hash`, `proposal_to`, `country`, `zip`, `state`, `city`, `address`, `email`, `phone`, `allow_comments`, `status`, `estimate_id`, `invoice_id`, `date_converted`, `pipeline_order`, `is_expiry_notified`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `signature`) VALUES
(1, 'Reverse Margin CRM/ERP: Phase 1', '<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p><img src=\"http://jaga.air-media.ca/media/Final-Logo%20copy.png\" width=\"400\" height=\"211\" alt=\"\" style=\"margin-left:auto;margin-right:auto;\"></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<h2 style=\"text-align:center;\"><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\">{proposal_subject}</span></h2>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p style=\"text-align:right;\"></p>\n<p style=\"text-align:right;\"><span>{proposal_number}</span></p>\n<p style=\"text-align:right;\"><span>{proposal_proposal_to}</span></p>\n<p style=\"text-align:right;\"></p>\n<p><span></span></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<h2><span>Overview</span></h2>\n<p><span style=\"font-weight:400;\"><span style=\"font-size:12pt;\">Reverse Margin requires an easily accessible online application that will grow with them into the future of online business increasing their market share, streamlining business processes from lead generation to sales to shipping and beyond as well as open new markets to them through automation.&#160;</span></span></p>\n<p><span style=\"font-size:12pt;\">&#160;</span></p>\n<p><span style=\"font-weight:400;font-size:12pt;\">Overall Functionality of the Reverse Margin EPR System is to manage tasks, customers and leads, customer orders and accounts.&#160; The administrative section of this website will allow for the management of users, information and reports for the overall business.</span></p>\n<p><span>&#160;</span></p>\n<p style=\"text-align:center;\"><span style=\"font-size:14pt;\"><strong><span style=\"font-family:arial, helvetica, sans-serif;\"><em>Ex.&#160; portal.reversemargin.com</em></span></strong></span></p>\n<p><span>&#160;</span></p>\n<h3><b>Project Scope:</b></h3>\n<p><span>&#160;</span></p>\n<p><span style=\"font-weight:400;font-size:12pt;\">To create a modular system that will cover Reverse Margin&#8217;s current and future requirements. The system will be created strategically to ensure the system is ramped up to accommodate business growth and ongoing lead creation.</span></p>\n<p></p>\n<h2><b>Updates:</b></h2>\n<p><span>&#160;</span></p>\n<p><span style=\"font-weight:400;font-size:12pt;\">Updates to framework and security will be offered during the lifecycle of this product as new technology and security requirements come to light .&#160; Estimates will be provided prior to any updates. The 6 months of maintenance and updates are included in the initial price. This period will commence once the final approval and handoff has been completed.</span></p>\n<p><span style=\"font-size:12pt;\">&#160;</span></p>\n<h3><b>Timelines:</b><span>&#160;</span></h3>\n<p><span style=\"font-weight:400;font-size:12pt;\">Current timelines are estimated between 3-4 months for the entire system to be rolled out.&#160; These timelines include a quality assurance phase where testing of the product will be held.&#160; As well, the 3-4 months will include a BETA phase where Reverse Margin will be able to test the product and provide feedback on the functionality.</span></p>\n<p><span style=\"font-size:12pt;\"><b>Initial CRM module timelines are estimated at 3-4 months.</b></span></p>\n<p><span style=\"font-size:12pt;\"><b>Final Timelines will be established once a contract is signed and discovery has been completed.</b></span></p>\n<p></p>\n<h2><b>Application Features and Module</b></h2>\n<p></p>\n<p><span style=\"font-size:12pt;\"><b>Base System: </b> <span style=\"font-weight:400;\">The base system is the essential backbone of the modular system.&#160; It will manage and contain the information stored from all individual modules as well the login and administrative access,&#160; structure and security. </span>Custom development for complex web app </span><span style=\"font-size:12pt;\">including Database work. Development will</span><span style=\"font-size:12pt;\">&#160;</span><span style=\"font-size:12pt;\">be accelerated using Existing Framework </span><span style=\"font-size:12pt;\">inside PHP. We will use the base system of an existing open source framework to reduce overall costs associated with a CRM.</span></p>\n<p><span style=\"font-size:12pt;\"></span></p>\n<p><strong><span style=\"font-size:12pt;\">Base System will include such items as:</span></strong></p>\n<ol>\n<li><span style=\"font-size:12pt;\"><span style=\"font-weight:400;\"></span><span style=\"font-style:normal;font-weight:500;font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Sales:&#160;</span><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-style:normal;font-weight:400;\">Accounts system will give access to the individual accounts, their settings, contacts and overall management and history</span></span></li>\n<li><span style=\"font-size:12pt;\"><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-style:normal;font-weight:400;\"><b>Accounts: </b><span style=\"font-weight:400;\">Accounts system will give access to the individual accounts, their settings, contacts and overall management and history.</span></span></span></li>\n<li><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:12pt;font-style:normal;font-weight:400;\"><span style=\"font-weight:400;\"><b>Ticket System: </b>Quality assurance management through the ticket system. This will enable labs and dentists to create tickets and track potential issues with orders, ensuring all orders are taken care of in an appropriate timeline and manner.</span></span></li>\n<li><span style=\"font-weight:400;font-size:12pt;\"><strong>Reports</strong>: Create basic reports for aspects of the system that are included in base</span></li>\n<li><span style=\"font-size:12pt;\"><strong>Accounting:&#160;</strong>Base System accounting including invoicing, estimates and creation of proposals as needed</span></li>\n</ol>\n<h3></h3>\n<h3>Modules</h3>\n<p><span style=\"font-size:12pt;\"><b>Sales System: </b><span style=\"font-weight:400;\">The CRM system will manage all of the accounts, appointments, notes, tasks and status updates. The system will enable multiple sales people to have a central repository of information for all Reverse Margin records.</span></span></p>\n<p><span style=\"font-size:12pt;\"><span style=\"font-weight:400;\"><strong>Inventory Module:</strong> Create Inventory items based on the needs of Reverse Margin for easy ordering.</span></span></p>\n<p><span style=\"font-size:12pt;\"><b>Order Management: </b><span style=\"font-weight:400;\">Manage and view all orders placed by accounts and labs, enable labs and dentists to have a separate login where they can manage their own account and view order status.</span></span></p>\n<p><span style=\"font-weight:400;font-size:12pt;\"><strong>Shipping Management:</strong> Add tracking function to orders</span></p>\n<p><span style=\"font-size:12pt;\"><b>Customer Gatewayt: </b><span style=\"font-weight:400;\">Manage all labs and reseller accounts, centralize the orders, tickets and accounts receivables in one place.</span><b>Reports: </b><span style=\"font-weight:400;\">Create reports for all aspects of the system. This module will be customized based on your requirements as well as your accountant&#8217;s requirements.</span></span></p>\n<p><span style=\"font-size:16px;\"><strong>Quickbooks Integration:</strong> Integrate&#160;</span></p>\n<p><span style=\"font-style:normal;font-weight:500;font-size:13px;font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-size:16px;\">Reports:&#160;</span></span><span style=\"font-size:16px;\">Create more logic for generating reports based on new modules and integration with existing modules</span></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p><br><span style=\"font-weight:400;\"></span></p>\n<h2>About the Development Cycle</h2>\n<p></p>\n<table style=\"width:0px;\">\n<tbody>\n<tr>\n<td style=\"width:22px;\" colspan=\"3\">\n<h3><b>Application Cycle</b></h3>\n</td>\n</tr>\n<tr>\n<td style=\"width:22px;\">\n<p><span style=\"font-size:18pt;color:#339966;\"><b><span style=\"font-weight:400;\">&#10003;</span></b></span></p>\n</td>\n<td style=\"width:105px;\">\n<p><b>Discovery</b></p>\n</td>\n<td style=\"width:1006px;\">\n<p><span style=\"font-weight:400;\">stage is to ensure that all requirements are met in order to proceed.&#160; This will consist of an overall view of the project from the angle of both AIR Media and Reverse Margin.</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width:22px;\">\n<p><b><span style=\"font-size:18pt;color:#339966;\"><span style=\"font-weight:400;\">&#10003;</span></span></b></p>\n</td>\n<td style=\"width:105px;\">\n<p><b>Design</b></p>\n</td>\n<td style=\"width:1006px;\">\n<p><span style=\"font-weight:400;\">Work with end user to create an application interface that is intuitive and productive.</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width:22px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:105px;\">\n<p><b>Development*</b></p>\n</td>\n<td style=\"width:1006px;\">\n<p><span style=\"font-weight:400;\">See Development Project Cycle below</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width:22px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:105px;\">\n<p><b>Maintenance</b></p>\n</td>\n<td style=\"width:1006px;\">\n<p><span style=\"font-weight:400;\">Periodic upgrades to security and software structure will ensure a positive user experience is a necessity during the lifecycle of the application.</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p><br><br><br><br></p>\n<table style=\"height:266px;width:0px;\">\n<tbody>\n<tr style=\"height:38px;\">\n<td style=\"width:1134px;\" colspan=\"3\">\n<h3><b>Development Cycle</b></h3>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Development</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Development of application modules as as defined in the discovery and design stage of the process.</span></p>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Test</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Constant testing of the system will be continued throughout the development process.</span></p>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Approve&#160;</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Customer approval of the system.</span></p>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Deploy</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Deploy the production version of the application for live use.</span></p>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Analysis</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Analysis of the application will consist of software reports as well as user feedback.</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p><br><span style=\"font-weight:400;\"></span></p>\n<h2><span style=\"font-weight:400;\">Proposal</span></h2>\n<p><span style=\"font-weight:400;\"></span></p>\n<p>{proposal_items}</p>\n<p></p>\n<p></p>', 1, '2020-04-18 21:54:57', '14545.20', '18181.50', '0.00', '0.00', '20.00', '3636.30', 'before_tax', 3, 3, '2020-05-31', '2020-04-18', 1, 'customer', 1, '0a63f80a272fd0e36de5c825da0f3eb5', 'Emil Svoboda', 40, 'L6W 1B1', 'ON', 'Brampton', '110 Queen St East', 'drsvoboda@rogers.com', '905 866 6657', 1, 3, 6, NULL, NULL, 0, 0, 'Emil', 'Svoboda', 'drsvoboda@rogers.com', '2020-04-20 15:46:36', '99.234.110.254', NULL),
(2, 'Testing estimate - igor', '{proposal_items}', 2, '2020-04-20 16:33:21', '5.10', '170.00', '0.00', '0.00', '97.00', '164.90', 'before_tax', 2, 3, '2020-04-27', '2020-04-20', 2, 'customer', 0, '85a6d8c141c8fac484441b0fe66b3b22', 'Igor Silva', 0, '', '', '', '', 'igfernando@gmail.com', '', 1, 3, NULL, NULL, NULL, 0, 0, 'igor', 'Silva', 'igfernando@gmail.com', '2020-04-20 16:35:01', '198.84.189.167', 'signature.png'),
(3, 'Reverse Margin CRM/ERP: Phase 2', '<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p><img src=\"http://jaga.air-media.ca/media/Final-Logo%20copy.png\" width=\"400\" height=\"211\" alt=\"\" style=\"margin-left:auto;margin-right:auto;\"></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\"></span></p>\n<p style=\"text-align:right;\"><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-weight:400;\">{proposal_subject}</span></p>\n<p style=\"text-align:right;\"><span>{proposal_number}</span></p>\n<p style=\"text-align:right;\"><span>{companyname}</span></p>\n<p style=\"text-align:right;\"></p>\n<p><span></span></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<h2><span>Overview</span></h2>\n<p><span style=\"font-weight:400;\"><span style=\"font-size:12pt;\">Reverse Margin requires an easily accessible online application that will grow with them into the future of online business increasing their market share, streamlining business processes from lead generation to sales to shipping and beyond as well as open new markets to them through automation.&#160;</span></span></p>\n<p><span style=\"font-size:12pt;\">&#160;</span></p>\n<p><span style=\"font-weight:400;font-size:12pt;\">Overall Functionality of the Reverse Margin EPR System is to manage tasks, customers and leads, customer orders and accounts.&#160; The administrative section of this website will allow for the management of users, information and reports for the overall business.</span></p>\n<p><span>&#160;</span></p>\n<p style=\"text-align:center;\"><span style=\"font-size:14pt;\"><strong><span style=\"font-family:arial, helvetica, sans-serif;\"><em>Ex.&#160; portal.reversemargin.com</em></span></strong></span></p>\n<p><span>&#160;</span></p>\n<h3><b>Project Scope:</b></h3>\n<p><span>&#160;</span></p>\n<p><span style=\"font-weight:400;font-size:12pt;\">To create a modular system that will cover Reverse Margin&#8217;s current and future requirements. The system will be created strategically to ensure the system is ramped up to accommodate business growth and ongoing lead creation.</span></p>\n<p></p>\n<h2><b>Updates:</b></h2>\n<p><span>&#160;</span></p>\n<p><span style=\"font-weight:400;font-size:12pt;\">Updates to framework and security will be offered during the lifecycle of this product as new technology and security requirements come to light .&#160; Estimates will be provided prior to any updates. The 6 months of maintenance and updates are included in the initial price. This period will commence once the final approval and handoff has been completed.</span></p>\n<p><span style=\"font-size:12pt;\">&#160;</span></p>\n<h3><b>Timelines:</b><span>&#160;</span></h3>\n<p><span style=\"font-weight:400;font-size:12pt;\">Current timelines are estimated between 3-4 months for the entire system to be rolled out.&#160; These timelines include a quality assurance phase where testing of the product will be held.&#160; As well, the 3-4 months will include a BETA phase where Reverse Margin will be able to test the product and provide feedback on the functionality.</span></p>\n<p><span style=\"font-size:12pt;\"><b>Initial CRM module timelines are estimated at 3-4 months.</b></span></p>\n<p><span style=\"font-size:12pt;\"><b>Final Timelines will be established once a contract is signed and discovery has been completed.</b></span></p>\n<p></p>\n<h2><b>Application Features and Module</b></h2>\n<p></p>\n<p><span style=\"font-size:12pt;\"><b>Base System: </b> <span style=\"font-weight:400;\">The base system is the essential backbone of the modular system.&#160; It will manage and contain the information stored from all individual modules as well the login and administrative access,&#160; structure and security. </span>Custom development for complex web app </span><span style=\"font-size:12pt;\">including Database work. Development will</span><span style=\"font-size:12pt;\">&#160;</span><span style=\"font-size:12pt;\">be accelerated using Existing Framework </span><span style=\"font-size:12pt;\">inside PHP. We will use the base system of an existing open source framework to reduce overall costs associated with a CRM.</span></p>\n<p><span style=\"font-size:12pt;\"></span></p>\n<p><strong><span style=\"font-size:12pt;\">Base System will include such items as:</span></strong></p>\n<ol>\n<li><span style=\"font-size:12pt;\"><span style=\"font-weight:400;\"></span><span style=\"font-style:normal;font-weight:500;font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Sales:&#160;</span><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-style:normal;font-weight:400;\">Accounts system will give access to the individual accounts, their settings, contacts and overall management and history</span></span></li>\n<li><span style=\"font-size:12pt;\"><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-style:normal;font-weight:400;\"><b>Accounts: </b><span style=\"font-weight:400;\">Accounts system will give access to the individual accounts, their settings, contacts and overall management and history.</span></span></span></li>\n<li><span style=\"font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:12pt;font-style:normal;font-weight:400;\"><span style=\"font-weight:400;\"><b>Ticket System: </b>Quality assurance management through the ticket system. This will enable labs and dentists to create tickets and track potential issues with orders, ensuring all orders are taken care of in an appropriate timeline and manner.</span></span></li>\n<li><span style=\"font-weight:400;font-size:12pt;\"><strong>Reports</strong>: Create basic reports for aspects of the system that are included in base</span></li>\n<li><span style=\"font-size:12pt;\"><strong>Accounting:&#160;</strong>Base System accounting including invoicing, estimates and creation of proposals as needed</span></li>\n</ol>\n<h3></h3>\n<h3>Modules</h3>\n<p><span style=\"font-size:12pt;\"><b>Sales System: </b><span style=\"font-weight:400;\">The CRM system will manage all of the accounts, appointments, notes, tasks and status updates. The system will enable multiple sales people to have a central repository of information for all Reverse Margin records.</span></span></p>\n<p><span style=\"font-size:12pt;\"><span style=\"font-weight:400;\"><strong>Inventory Module:</strong> Create Inventory items based on the needs of Reverse Margin for easy ordering.</span></span></p>\n<p><span style=\"font-size:12pt;\"><b>Order Management: </b><span style=\"font-weight:400;\">Manage and view all orders placed by accounts and labs, enable labs and dentists to have a separate login where they can manage their own account and view order status.</span></span></p>\n<p><span style=\"font-weight:400;font-size:12pt;\"><strong>Shipping Management:</strong> Add tracking function to orders</span></p>\n<p><span style=\"font-size:12pt;\"><b>Customer Gatewayt: </b><span style=\"font-weight:400;\">Manage all labs and reseller accounts, centralize the orders, tickets and accounts receivables in one place.</span><b>Reports: </b><span style=\"font-weight:400;\">Create reports for all aspects of the system. This module will be customized based on your requirements as well as your accountant&#8217;s requirements.</span></span></p>\n<p><span style=\"font-size:16px;\"><strong>Quickbooks Integration:</strong> Integrate&#160;</span></p>\n<p><span style=\"font-style:normal;font-weight:500;font-size:13px;font-family:Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-size:16px;\">Reports:&#160;</span></span><span style=\"font-size:16px;\">Create more logic for generating reports based on new modules and integration with existing modules</span></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p><p></p><br><span style=\"font-weight:400;\"></span>\n<h2>About the Development Cycle</h2>\n<p></p>\n<table style=\"width:0px;\">\n<tbody>\n<tr>\n<td style=\"width:22px;\" colspan=\"3\">\n<h3><b>Application Cycle</b></h3>\n</td>\n</tr>\n<tr>\n<td style=\"width:22px;\">\n<p><span style=\"font-size:18pt;color:#339966;\"><b><span style=\"font-weight:400;\">&#10003;</span></b></span></p>\n</td>\n<td style=\"width:105px;\">\n<p><b>Discovery</b></p>\n</td>\n<td style=\"width:1006px;\">\n<p><span style=\"font-weight:400;\">stage is to ensure that all requirements are met in order to proceed.&#160; This will consist of an overall view of the project from the angle of both AIR Media and Reverse Margin.</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width:22px;\">\n<p><b><span style=\"font-size:18pt;color:#339966;\"><span style=\"font-weight:400;\">&#10003;</span></span></b></p>\n</td>\n<td style=\"width:105px;\">\n<p><b>Design</b></p>\n</td>\n<td style=\"width:1006px;\">\n<p><span style=\"font-weight:400;\">Work with end user to create an application interface that is intuitive and productive.</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width:22px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:105px;\">\n<p><b>Development*</b></p>\n</td>\n<td style=\"width:1006px;\">\n<p><span style=\"font-weight:400;\">See Development Project Cycle below</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width:22px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:105px;\">\n<p><b>Maintenance</b></p>\n</td>\n<td style=\"width:1006px;\">\n<p><span style=\"font-weight:400;\">Periodic upgrades to security and software structure will ensure a positive user experience is a necessity during the lifecycle of the application.</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p><br><br><br><br></p>\n<table style=\"height:266px;width:0px;\">\n<tbody>\n<tr style=\"height:38px;\">\n<td style=\"width:1134px;\" colspan=\"3\">\n<h3><b>Development Cycle</b></h3>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Development</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Development of application modules as as defined in the discovery and design stage of the process.</span></p>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Test</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Constant testing of the system will be continued throughout the development process.</span></p>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Approve&#160;</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Customer approval of the system.</span></p>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Deploy</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Deploy the production version of the application for live use.</span></p>\n</td>\n</tr>\n<tr style=\"height:38px;\">\n<td style=\"width:44px;\">\n<p><b>&#160;</b></p>\n</td>\n<td style=\"width:100px;height:38px;\">\n<p><b>Analysis</b></p>\n</td>\n<td style=\"width:990px;height:38px;\">\n<p><span style=\"font-weight:400;\">Analysis of the application will consist of software reports as well as user feedback.</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p></p>\n<p></p><p></p>\n<p></p>\n<p><br><span style=\"font-weight:400;\"></span></p>\n<h2><span style=\"font-weight:400;\">Proposal</span></h2>\n<p><span style=\"font-weight:400;\"></span></p>\n<p>{proposal_items}</p>\n<p></p>\n<p></p>', 1, '2020-05-04 16:48:32', '24862.50', '33150.00', '0.00', '0.00', '25.00', '8287.50', 'before_tax', 3, 3, '2020-05-11', '2020-05-04', 1, 'customer', 1, '09c07e8ee49c60962804d84f6e65912f', 'Emil Svoboda', 40, 'L6W 1B1', 'ON', 'Brampton', '110 Queen St East', 'drsvoboda@rogers.com', '905 866 6657', 1, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Dr. Emil Properties Monthly Marketing ', '{proposal_items}', 1, '2020-08-15 21:41:42', '3765.00', '3765.00', '0.00', '0.00', '0.00', '0.00', '', 1, 3, '2020-08-22', '2020-08-15', 1, 'customer', 1, '1d22067b33459fcc3f71eec912f6e76e', 'Emil Svoboda', 40, 'L6W 1B1', 'ON', 'Brampton', '110 Queen St East', 'drsvoboda@rogers.com', '905 866 6657', 1, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'test', '{proposal_items}', 4, '2020-09-15 13:37:41', '85.00', '85.00', '0.00', '0.00', '0.00', '0.00', '', 1, 3, '2020-09-22', '2020-09-15', 5, 'opportunity', 0, '0c95ac11dfbd790ae5cf6cb4d8efc11f', 'test', 10, '', '', '', '', 'test@e.com', '', 1, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblproposal_comments`
--

DROP TABLE IF EXISTS `tblproposal_comments`;
CREATE TABLE IF NOT EXISTS `tblproposal_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext DEFAULT NULL,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproposal_comments`
--

INSERT INTO `tblproposal_comments` (`id`, `content`, `proposalid`, `staffid`, `dateadded`) VALUES
(1, 'Please see the attached proposal Emil - we have provided a significant discount on the end of this development.', 1, 1, '2020-04-20 13:23:21'),
(2, 'Thanks Perfect!', 1, 1, '2020-04-20 15:53:11'),
(3, 'Low Andrew :-)', 1, 0, '2020-05-13 11:38:40'),
(4, 'Thank you for the response Emil!', 1, 1, '2020-05-13 11:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchase_option`
--

DROP TABLE IF EXISTS `tblpurchase_option`;
CREATE TABLE IF NOT EXISTS `tblpurchase_option` (
  `option_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) NOT NULL,
  `option_val` longtext DEFAULT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpurchase_option`
--

INSERT INTO `tblpurchase_option` (`option_id`, `option_name`, `option_val`, `auto`) VALUES
(1, 'purchase_order_setting', '1', 1),
(2, 'pur_order_prefix', '#PO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_approval_details`
--

DROP TABLE IF EXISTS `tblpur_approval_details`;
CREATE TABLE IF NOT EXISTS `tblpur_approval_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` varchar(45) DEFAULT NULL,
  `approve` varchar(45) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_approval_setting`
--

DROP TABLE IF EXISTS `tblpur_approval_setting`;
CREATE TABLE IF NOT EXISTS `tblpur_approval_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `related` varchar(255) NOT NULL,
  `setting` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_contacts`
--

DROP TABLE IF EXISTS `tblpur_contacts`;
CREATE TABLE IF NOT EXISTS `tblpur_contacts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT 1,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT 1,
  `estimate_emails` tinyint(1) NOT NULL DEFAULT 1,
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT 1,
  `contract_emails` tinyint(1) NOT NULL DEFAULT 1,
  `task_emails` tinyint(1) NOT NULL DEFAULT 1,
  `project_emails` tinyint(1) NOT NULL DEFAULT 1,
  `ticket_emails` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_contracts`
--

DROP TABLE IF EXISTS `tblpur_contracts`;
CREATE TABLE IF NOT EXISTS `tblpur_contracts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `contract_number` varchar(200) NOT NULL,
  `contract_name` varchar(200) NOT NULL,
  `content` longtext DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `pur_order` int(11) NOT NULL,
  `contract_value` decimal(15,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL,
  `time_payment` date DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  `signed` int(32) NOT NULL DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `signer` int(11) DEFAULT NULL,
  `signed_date` date DEFAULT NULL,
  `signed_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_estimates`
--

DROP TABLE IF EXISTS `tblpur_estimates`;
CREATE TABLE IF NOT EXISTS `tblpur_estimates` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `deleted_vendor_name` varchar(100) DEFAULT NULL,
  `pur_request` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `vendornote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `pipeline_order` int(11) NOT NULL DEFAULT 0,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_estimate_detail`
--

DROP TABLE IF EXISTS `tblpur_estimate_detail`;
CREATE TABLE IF NOT EXISTS `tblpur_estimate_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pur_estimate` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,0) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `discount_%` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_orders`
--

DROP TABLE IF EXISTS `tblpur_orders`;
CREATE TABLE IF NOT EXISTS `tblpur_orders` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pur_order_name` varchar(100) NOT NULL,
  `vendor` int(11) NOT NULL,
  `estimate` int(11) NOT NULL,
  `pur_order_number` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `status` int(32) NOT NULL DEFAULT 1,
  `approve_status` int(32) NOT NULL DEFAULT 1,
  `datecreated` datetime NOT NULL,
  `days_owed` int(11) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendornote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `status_goods` int(11) NOT NULL DEFAULT 0,
  `number` int(11) DEFAULT NULL,
  `expense_convert` int(11) DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `clients` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_order_detail`
--

DROP TABLE IF EXISTS `tblpur_order_detail`;
CREATE TABLE IF NOT EXISTS `tblpur_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pur_order` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `discount_%` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_order_payment`
--

DROP TABLE IF EXISTS `tblpur_order_payment`;
CREATE TABLE IF NOT EXISTS `tblpur_order_payment` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pur_order` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` longtext DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_request`
--

DROP TABLE IF EXISTS `tblpur_request`;
CREATE TABLE IF NOT EXISTS `tblpur_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pur_rq_code` varchar(45) NOT NULL,
  `pur_rq_name` varchar(100) NOT NULL,
  `rq_description` text DEFAULT NULL,
  `requester` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `request_date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `status_goods` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_request_detail`
--

DROP TABLE IF EXISTS `tblpur_request_detail`;
CREATE TABLE IF NOT EXISTS `tblpur_request_detail` (
  `prd_id` int(11) NOT NULL AUTO_INCREMENT,
  `pur_request` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `inventory_quantity` int(11) NOT NULL,
  PRIMARY KEY (`prd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_unit`
--

DROP TABLE IF EXISTS `tblpur_unit`;
CREATE TABLE IF NOT EXISTS `tblpur_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(100) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor`
--

DROP TABLE IF EXISTS `tblpur_vendor`;
CREATE TABLE IF NOT EXISTS `tblpur_vendor` (
  `userid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company` varchar(200) DEFAULT NULL,
  `vat` varchar(200) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT 0,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT 0,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `show_primary_contact` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT 1,
  `addedfrom` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpur_vendor`
--

INSERT INTO `tblpur_vendor` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`) VALUES
(1, 'Amazon', '', '', 0, '', '', '', '', '', '2020-09-01 23:27:03', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor_admin`
--

DROP TABLE IF EXISTS `tblpur_vendor_admin`;
CREATE TABLE IF NOT EXISTS `tblpur_vendor_admin` (
  `staff_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date_assigned` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor_items`
--

DROP TABLE IF EXISTS `tblpur_vendor_items`;
CREATE TABLE IF NOT EXISTS `tblpur_vendor_items` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor` int(11) NOT NULL,
  `group_items` int(11) DEFAULT NULL,
  `items` int(11) NOT NULL,
  `add_from` int(11) DEFAULT NULL,
  `datecreate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrelated_items`
--

DROP TABLE IF EXISTS `tblrelated_items`;
CREATE TABLE IF NOT EXISTS `tblrelated_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblrelated_items`
--

INSERT INTO `tblrelated_items` (`id`, `rel_id`, `rel_type`, `item_id`) VALUES
(1, 4, 'task', 62),
(2, 44, 'task', 66),
(3, 38, 'task', 67),
(4, 39, 'task', 70),
(5, 41, 'task', 71),
(6, 46, 'task', 73),
(7, 47, 'task', 76),
(8, 48, 'task', 77);

-- --------------------------------------------------------

--
-- Table structure for table `tblreminders`
--

DROP TABLE IF EXISTS `tblreminders`;
CREATE TABLE IF NOT EXISTS `tblreminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT 0,
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT 1,
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `staff` (`staff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblresource`
--

DROP TABLE IF EXISTS `tblresource`;
CREATE TABLE IF NOT EXISTS `tblresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(100) NOT NULL,
  `resource_group` int(11) NOT NULL,
  `approved` int(11) NOT NULL,
  `manager` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblresource_group`
--

DROP TABLE IF EXISTS `tblresource_group`;
CREATE TABLE IF NOT EXISTS `tblresource_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblroles`
--

DROP TABLE IF EXISTS `tblroles`;
CREATE TABLE IF NOT EXISTS `tblroles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `permissions` longtext DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblroles`
--

INSERT INTO `tblroles` (`roleid`, `name`, `permissions`) VALUES
(1, 'Employee', NULL),
(2, 'Contractors', 'a:4:{s:9:\"contracts\";a:1:{i:0;s:8:\"view_own\";}s:8:\"projects\";a:1:{i:0;s:4:\"view\";}s:5:\"tasks\";a:1:{i:0;s:4:\"view\";}s:19:\"checklist_templates\";a:1:{i:0;s:6:\"create\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_activity`
--

DROP TABLE IF EXISTS `tblsales_activity`;
CREATE TABLE IF NOT EXISTS `tblsales_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` text DEFAULT NULL,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsales_activity`
--

INSERT INTO `tblsales_activity` (`id`, `rel_type`, `rel_id`, `description`, `additional_data`, `staffid`, `full_name`, `date`) VALUES
(1, 'estimate', 1, 'estimate_activity_created', '', '1', 'Andrew Gordon', '2020-04-18 16:36:36'),
(9, 'estimate', 1, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:15:\"Shipping Module\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(10, 'estimate', 1, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:13:\"Orders Module\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(11, 'estimate', 1, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:12:\"Sales Module\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(12, 'estimate', 1, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:16:\"Inventory Module\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(13, 'estimate', 1, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:7:\"Reports\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(14, 'estimate', 1, 'estimate_activity_number_changed', 'a:2:{i:0;s:10:\"EST-000001\";i:1;s:10:\"EST-200054\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(15, 'estimate', 1, 'invoice_estimate_activity_updated_qty_item', 'a:3:{i:0;s:19:\"Website Development\";i:1;s:6:\"100.00\";i:2;s:2:\"40\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(16, 'estimate', 1, 'invoice_estimate_activity_updated_item_short_description', 'a:2:{i:0;s:15:\"Web Development\";i:1;s:19:\"Website Development\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(17, 'estimate', 1, 'invoice_estimate_activity_updated_item_long_description', 'a:2:{i:0;s:89:\"Create a Custom Web App with complex instructions and processes which include a database.\";i:1;s:127:\"Create Custom Website for Reverse Margin.\r\nUsing PHP framework and OTC tools to accelerate timelines and allow for simple edits\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(18, 'estimate', 1, 'invoice_estimate_activity_updated_item_rate', 'a:2:{i:0;s:5:\"85.00\";i:1;s:2:\"65\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(19, 'estimate', 1, 'invoice_estimate_activity_updated_qty_item', 'a:3:{i:0;s:15:\"Custom Graphics\";i:1;s:5:\"60.00\";i:2;s:2:\"20\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(20, 'estimate', 1, 'invoice_estimate_activity_updated_item_short_description', 'a:2:{i:0;s:22:\"QuickBooks integration\";i:1;s:15:\"Custom Graphics\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(21, 'estimate', 1, 'invoice_estimate_activity_updated_item_long_description', 'a:2:{i:0;s:0:\"\";i:1;s:33:\"Create necessary custom graphics \";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(22, 'estimate', 1, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:14:\"Website Design\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(23, 'estimate', 1, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:22:\"Testing and Deployment\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:13'),
(24, 'estimate', 1, 'invoice_estimate_activity_sent_to_client', 'a:1:{i:0;s:83:\"<custom_data>drsvoboda@rogers.com, evaparkplacedentalcentre@gmail.com</custom_data>\";}', '1', 'Andrew Gordon', '2020-04-20 14:13:16'),
(26, 'invoice', 2, 'invoice_activity_auto_converted_from_estimate', 'a:1:{i:0;s:82:\"<a href=\"http://jaga.air-media.ca/admin/estimates/list_estimates/1\">EST-200054</a>\";}', NULL, '', '2020-04-20 15:39:29'),
(27, 'estimate', 1, 'estimate_activity_client_accepted_and_converted', 'a:1:{i:0;s:83:\"<a href=\"http://jaga.air-media.ca/admin/invoices/list_invoices/2\">INV-000001-20</a>\";}', NULL, '', '2020-04-20 15:39:29'),
(28, 'estimate', 1, 'invoice_estimate_activity_updated_item_long_description', 'a:2:{i:0;s:33:\"Create necessary custom graphics \";i:1;s:32:\"Create necessary custom graphics\";}', '1', 'Andrew Gordon', '2020-04-20 16:24:09'),
(54, 'estimate', 4, 'estimate_activity_created', '', '1', 'Andrew Gordon', '2020-05-07 22:58:10'),
(55, 'estimate', 4, 'invoice_estimate_activity_updated_item_long_description', 'a:2:{i:0;s:98:\"Create necessary Graphics and images through customer interaction from landing to sale completion \";i:1;s:97:\"Create necessary Graphics and images through customer interaction from landing to sale completion\";}', '1', 'Andrew Gordon', '2020-05-07 22:58:49'),
(56, 'estimate', 5, 'estimate_activity_created', '', '2', 'Igor Silva', '2020-05-08 00:06:57'),
(57, 'estimate', 5, 'invoice_estimate_activity_updated_item_long_description', 'a:2:{i:0;s:133:\"Design a landing page with the goal to convert leads into registrants. <br />\r\nHeader Banner, Page layout, Information organization \";i:1;s:115:\"Design a landing page with the goal to convert leads into registrants. \r\nHeader Banner, Page layout, Call to action\";}', '2', 'Igor Silva', '2020-05-08 12:52:53'),
(58, 'estimate', 5, 'invoice_estimate_activity_updated_item_long_description', 'a:2:{i:0;s:132:\"Setup of Eventbrite account to manage events tickets, registrations and some level of email notification and communication. <br />\r\n\";i:1;s:123:\"Setup of Eventbrite account to manage events tickets, registrations and some level of email notification and communication.\";}', '2', 'Igor Silva', '2020-05-08 12:52:53'),
(59, 'estimate', 5, 'invoice_estimate_activity_updated_item_short_description', 'a:2:{i:0;s:32:\"Bulletin for attachments Layout \";i:1;s:31:\"Bulletin for attachments Layout\";}', '2', 'Igor Silva', '2020-05-08 12:52:53'),
(60, 'estimate', 5, 'invoice_estimate_activity_updated_item_long_description', 'a:2:{i:0;s:113:\"Suggested 250 CAD Budget for advertisement, 10% admin fee for ads maintenance <br />\r\n25 CAD Fee <br />\r\n225 CAD \";i:1;s:100:\"Suggested 250 CAD Budget for advertisement, 10% admin fee for ads maintenance \r\n25 CAD Fee \r\n225 CAD\";}', '2', 'Igor Silva', '2020-05-08 12:52:53'),
(61, 'estimate', 4, 'invoice_estimate_activity_updated_qty_item', 'a:3:{i:0;s:19:\"Landing Page Design\";i:1;s:4:\"5.00\";i:2;s:2:\"10\";}', '1', 'Andrew Gordon', '2020-05-08 14:52:52'),
(62, 'estimate', 4, 'invoice_estimate_activity_updated_qty_item', 'a:3:{i:0;s:15:\"Web Development\";i:1;s:5:\"10.00\";i:2;s:2:\"15\";}', '1', 'Andrew Gordon', '2020-05-08 14:52:52'),
(63, 'estimate', 4, 'invoice_estimate_activity_updated_qty_item', 'a:3:{i:0;s:8:\"Graphics\";i:1;s:4:\"5.00\";i:2;s:1:\"3\";}', '1', 'Andrew Gordon', '2020-05-08 14:52:52'),
(64, 'estimate', 4, 'estimate_activity_marked', 'a:1:{i:0;s:18:\"<status>4</status>\";}', '1', 'Andrew Gordon', '2020-05-11 10:50:22'),
(65, 'invoice', 7, 'invoice_activity_created', '', '1', 'Andrew Gordon', '2020-05-11 10:50:28'),
(66, 'estimate', 4, 'estimate_activity_converted', 'a:1:{i:0;s:86:\"<a href=\"https://jaga.air-media.ca/admin/invoices/list_invoices/7\">AIR-INV-0075-20</a>\";}', '1', 'Andrew Gordon', '2020-05-11 10:50:28'),
(67, 'invoice', 2, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '0', '', '2020-05-12 14:01:48'),
(68, 'invoice', 2, 'invoice_activity_payment_made_by_client', 'a:2:{i:0;s:9:\"$5,215.00\";i:1;s:83:\"<a href=\"https://jaga.air-media.ca/admin/payments/payment/5\" target=\"_blank\">#5</a>\";}', NULL, '', '2020-05-12 14:01:48'),
(69, 'invoice', 2, 'invoice_activity_record_payment_email_to_customer', 'a:1:{i:0;s:56:\"drsvoboda@rogers.com, evaparkplacedentalcentre@gmail.com\";}', '0', '', '2020-05-12 14:01:53'),
(70, 'invoice', 8, 'invoice_activity_created', '', '1', 'Andrew Gordon', '2020-05-19 23:06:36'),
(71, 'estimate', 5, 'estimate_activity_client_declined', '', NULL, '', '2020-06-03 18:31:11'),
(72, 'invoice', 7, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>6</original_status>\";i:1;s:26:\"<new_status>1</new_status>\";}', '1', 'Andrew Gordon', '2020-06-09 23:11:34'),
(73, 'invoice', 7, 'invoice_activity_marked_as_sent', 'a:0:{}', '1', 'Andrew Gordon', '2020-06-09 23:11:34'),
(74, 'estimate', 6, 'estimate_activity_created', '', '1', 'Andrew Gordon', '2020-06-10 21:55:29'),
(75, 'invoice', 9, 'invoice_activity_created', '', '1', 'Andrew Gordon', '2020-06-10 22:21:10'),
(76, 'estimate', 6, 'estimate_activity_converted', 'a:1:{i:0;s:86:\"<a href=\"https://jaga.air-media.ca/admin/invoices/list_invoices/9\">AIR-INV-0077-20</a>\";}', '1', 'Andrew Gordon', '2020-06-10 22:21:10'),
(77, 'invoice', 10, 'invoice_activity_created', '', '1', 'Andrew Gordon', '2020-06-15 13:43:51'),
(78, 'invoice', 10, 'invoice_activity_sent_to_client', 'a:1:{i:0;s:107:\"<custom_data>drsvoboda@rogers.com, evaparkplacedentalcentre@gmail.com, ig.fernan.do@gmail.com</custom_data>\";}', '1', 'Andrew Gordon', '2020-06-15 13:43:56'),
(79, 'invoice', 7, 'invoice_activity_sent_to_client', 'a:1:{i:0;s:83:\"<custom_data>drsvoboda@rogers.com, evaparkplacedentalcentre@gmail.com</custom_data>\";}', '1', 'Andrew Gordon', '2020-06-15 13:45:45'),
(80, 'invoice', 10, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '0', '', '2020-06-18 14:34:50'),
(81, 'invoice', 10, 'invoice_activity_payment_made_by_client', 'a:2:{i:0;s:9:\"$2,210.00\";i:1;s:83:\"<a href=\"https://jaga.air-media.ca/admin/payments/payment/6\" target=\"_blank\">#6</a>\";}', NULL, '', '2020-06-18 14:34:50'),
(82, 'invoice', 10, 'invoice_activity_record_payment_email_to_customer', 'a:1:{i:0;s:80:\"drsvoboda@rogers.com, evaparkplacedentalcentre@gmail.com, ig.fernan.do@gmail.com\";}', '0', '', '2020-06-18 14:34:56'),
(83, 'invoice', 7, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>4</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '0', '', '2020-06-18 14:36:21'),
(84, 'invoice', 7, 'invoice_activity_payment_made_by_client', 'a:2:{i:0;s:9:\"$2,770.00\";i:1;s:83:\"<a href=\"https://jaga.air-media.ca/admin/payments/payment/7\" target=\"_blank\">#7</a>\";}', NULL, '', '2020-06-18 14:36:21'),
(85, 'invoice', 7, 'invoice_activity_record_payment_email_to_customer', 'a:1:{i:0;s:80:\"drsvoboda@rogers.com, evaparkplacedentalcentre@gmail.com, ig.fernan.do@gmail.com\";}', '0', '', '2020-06-18 14:36:23'),
(86, 'estimate', 7, 'estimate_activity_created', '', '1', 'Andrew Gordon', '2020-06-18 22:59:29'),
(87, 'estimate', 8, 'estimate_activity_created', '', '1', 'Andrew Gordon', '2020-06-18 23:03:43'),
(88, 'invoice', 9, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:7:\"PAYMENT\";}', '1', 'Andrew Gordon', '2020-07-31 14:32:08'),
(89, 'invoice', 11, 'invoice_activity_created', '', '1', 'Andrew Gordon', '2020-07-31 15:45:34'),
(90, 'invoice', 12, 'invoice_activity_created', '', '1', 'Andrew Gordon', '2020-07-31 15:55:38'),
(91, 'invoice', 12, 'invoice_activity_sent_to_client', 'a:1:{i:0;s:47:\"<custom_data>drsvoboda@rogers.com</custom_data>\";}', '1', 'Andrew Gordon', '2020-08-05 17:44:16'),
(92, 'invoice', 11, 'invoice_activity_sent_to_client', 'a:1:{i:0;s:47:\"<custom_data>drsvoboda@rogers.com</custom_data>\";}', '1', 'Andrew Gordon', '2020-08-05 17:45:09'),
(93, 'invoice', 12, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'Andrew Gordon', '2020-08-14 09:35:20'),
(94, 'invoice', 12, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:9:\"$5,000.00\";i:1;s:83:\"<a href=\"https://jaga.air-media.ca/admin/payments/payment/8\" target=\"_blank\">#8</a>\";}', '1', 'Andrew Gordon', '2020-08-14 09:35:20'),
(95, 'invoice', 11, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'Andrew Gordon', '2020-08-14 09:36:40'),
(96, 'invoice', 11, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:9:\"$1,184.01\";i:1;s:83:\"<a href=\"https://jaga.air-media.ca/admin/payments/payment/9\" target=\"_blank\">#9</a>\";}', '1', 'Andrew Gordon', '2020-08-14 09:36:40'),
(97, 'estimate', 9, 'estimate_activity_created', '', '1', 'Andrew Gordon', '2020-08-14 10:04:12'),
(98, 'estimate', 9, 'estimate_activity_marked', 'a:1:{i:0;s:18:\"<status>2</status>\";}', '1', 'Andrew Gordon', '2020-08-15 22:32:41'),
(99, 'invoice', 8, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>4</new_status>\";}', '[CRON]', '[CRON]', '2020-08-31 22:19:35'),
(100, 'estimate', 9, 'not_estimate_status_updated', 'a:2:{i:0;s:36:\"<original_status>2</original_status>\";i:1;s:26:\"<new_status>5</new_status>\";}', '[CRON]', '[CRON]', '2020-09-01 21:00:02'),
(101, 'invoice', 13, 'invoice_activity_created', '', '1', 'Andrew Gordon', '2020-09-03 13:07:25'),
(102, 'estimate', 9, 'invoice_estimate_activity_updated_qty_item', 'a:3:{i:0;s:23:\"Application Development\";i:1;s:5:\"20.00\";i:2;s:4:\"27.5\";}', '1', 'Andrew Gordon', '2020-09-04 16:20:06'),
(103, 'invoice', 14, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-18 11:36:02'),
(104, 'invoice', 15, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 09:33:54'),
(105, 'invoice', 16, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 09:34:31'),
(106, 'invoice', 17, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 09:39:09'),
(107, 'invoice', 18, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 09:53:37'),
(108, 'invoice', 19, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 10:06:48'),
(109, 'invoice', 20, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 10:54:11'),
(110, 'invoice', 21, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 10:55:23'),
(111, 'invoice', 22, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 10:58:29'),
(112, 'invoice', 23, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 11:19:20'),
(113, 'invoice', 24, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-29 13:52:21'),
(114, 'invoice', 24, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:17:\"TestGroupX1 Item1\";}', '4', 'Haider Javaid', '2020-09-30 06:27:33'),
(115, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:31:\"Bulletin for attachments Layout\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(116, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:41:\"Eventbrite Integration with Zoom Webinars\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(117, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:18:\"Google Suite Users\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(118, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:7:\"PAYMENT\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(119, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:9:\"Test Item\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(120, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:17:\"TestGroup1 Item 1\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(121, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:17:\"3D Graphic Design\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(122, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:20:\"Advertisement Budget\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(123, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:23:\"Application Development\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(124, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:8:\"Graphics\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(125, 'invoice', 24, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:17:\"TestGroupX1 Item1\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(126, 'invoice', 24, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:17:\"TestGroupX1 Item1\";}', '4', 'Haider Javaid', '2020-09-30 06:37:53'),
(127, 'invoice', 25, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-30 08:58:24'),
(128, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:19:\"Landing Page Design\";}', '4', 'Haider Javaid', '2020-09-30 09:00:37'),
(129, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:35:\"Webinar Organic and Paid promotions\";}', '4', 'Haider Javaid', '2020-09-30 09:00:37'),
(130, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:11:\"Web Hosting\";}', '4', 'Haider Javaid', '2020-09-30 09:00:37'),
(131, 'invoice', 25, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:21:\"Marketing Outsourcing\";}', '4', 'Haider Javaid', '2020-09-30 09:00:37'),
(132, 'invoice', 25, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:21:\"Reputation Management\";}', '4', 'Haider Javaid', '2020-09-30 09:00:37'),
(133, 'invoice', 25, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:7:\"Testing\";}', '4', 'Haider Javaid', '2020-09-30 09:00:37'),
(134, 'invoice', 25, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:15:\"Web Development\";}', '4', 'Haider Javaid', '2020-09-30 09:00:37'),
(135, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:15:\"Web Development\";}', '4', 'Haider Javaid', '2020-09-30 09:14:38'),
(136, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:15:\"Web Development\";}', '4', 'Haider Javaid', '2020-09-30 09:14:38'),
(137, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:21:\"Marketing Outsourcing\";}', '4', 'Haider Javaid', '2020-09-30 09:14:38'),
(138, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:21:\"Marketing Outsourcing\";}', '4', 'Haider Javaid', '2020-09-30 09:14:38'),
(139, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:21:\"Reputation Management\";}', '4', 'Haider Javaid', '2020-09-30 09:14:38'),
(140, 'invoice', 25, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:7:\"Testing\";}', '4', 'Haider Javaid', '2020-09-30 09:14:38'),
(141, 'invoice', 25, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:21:\"Reputation Management\";}', '4', 'Haider Javaid', '2020-09-30 09:14:38'),
(142, 'invoice', 25, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:7:\"Testing\";}', '4', 'Haider Javaid', '2020-09-30 09:14:38'),
(143, 'invoice', 26, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-30 09:25:41'),
(144, 'invoice', 26, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:7:\"Testing\";}', '4', 'Haider Javaid', '2020-09-30 09:34:29'),
(145, 'invoice', 26, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:35:\"Webinar Organic and Paid promotions\";}', '4', 'Haider Javaid', '2020-09-30 09:34:29'),
(146, 'invoice', 26, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:15:\"Web Development\";}', '4', 'Haider Javaid', '2020-09-30 09:34:29'),
(147, 'invoice', 26, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:21:\"Reputation Management\";}', '4', 'Haider Javaid', '2020-09-30 09:34:29'),
(148, 'invoice', 26, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:19:\"Landing Page Design\";}', '4', 'Haider Javaid', '2020-09-30 09:34:29'),
(149, 'invoice', 26, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:6:\"fdsfds\";}', '4', 'Haider Javaid', '2020-09-30 09:34:57'),
(150, 'invoice', 26, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:11:\"Web Hosting\";}', '4', 'Haider Javaid', '2020-09-30 10:33:45'),
(151, 'invoice', 26, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:4:\"Test\";}', '4', 'Haider Javaid', '2020-09-30 10:33:45'),
(152, 'estimate', 10, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-09-30 11:12:05'),
(153, 'estimate', 11, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-09-30 11:16:32'),
(154, 'estimate', 11, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:19:\"Landing Page Design\";}', '4', 'Haider Javaid', '2020-09-30 11:48:22'),
(155, 'estimate', 11, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:21:\"Marketing Outsourcing\";}', '4', 'Haider Javaid', '2020-09-30 11:48:22'),
(156, 'estimate', 11, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:21:\"Reputation Management\";}', '4', 'Haider Javaid', '2020-09-30 11:48:22'),
(157, 'estimate', 11, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:7:\"Testing\";}', '4', 'Haider Javaid', '2020-09-30 11:48:22'),
(158, 'estimate', 11, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:15:\"Web Development\";}', '4', 'Haider Javaid', '2020-09-30 11:48:22'),
(159, 'estimate', 11, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:11:\"Web Hosting\";}', '4', 'Haider Javaid', '2020-09-30 11:48:22'),
(160, 'estimate', 11, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:35:\"Webinar Organic and Paid promotions\";}', '4', 'Haider Javaid', '2020-09-30 11:48:22'),
(161, 'estimate', 12, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-09-30 11:49:55'),
(162, 'estimate', 12, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:4:\"Test\";}', '4', 'Haider Javaid', '2020-09-30 11:50:16'),
(163, 'invoice', 27, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-30 12:00:15'),
(164, 'estimate', 12, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/27\">INV-0095-20</a>\";}', '4', 'Haider Javaid', '2020-09-30 12:00:15'),
(165, 'invoice', 28, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-30 12:01:45'),
(166, 'estimate', 12, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/28\">INV-0096-20</a>\";}', '4', 'Haider Javaid', '2020-09-30 12:01:45'),
(167, 'invoice', 29, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-30 12:05:41'),
(168, 'estimate', 11, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/29\">INV-0097-20</a>\";}', '4', 'Haider Javaid', '2020-09-30 12:05:41'),
(169, 'estimate', 13, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-09-30 12:11:08'),
(170, 'estimate', 13, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:19:\"Test Test dsadasdas\";}', '4', 'Haider Javaid', '2020-09-30 12:11:30'),
(171, 'invoice', 30, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-30 12:11:37'),
(172, 'estimate', 13, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/30\">INV-0098-20</a>\";}', '4', 'Haider Javaid', '2020-09-30 12:11:37'),
(173, 'invoice', 31, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-30 14:09:06'),
(174, 'invoice', 32, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-09-30 15:54:09'),
(175, 'invoice', 32, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:31:\"Bulletin for attachments Layout\";}', '4', 'Haider Javaid', '2020-10-01 10:29:43'),
(176, 'invoice', 32, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:41:\"Eventbrite Integration with Zoom Webinars\";}', '4', 'Haider Javaid', '2020-10-01 10:29:43'),
(177, 'invoice', 32, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:18:\"Google Suite Users\";}', '4', 'Haider Javaid', '2020-10-01 10:29:43'),
(178, 'invoice', 32, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:7:\"PAYMENT\";}', '4', 'Haider Javaid', '2020-10-01 10:29:43'),
(179, 'invoice', 32, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:9:\"Test Item\";}', '4', 'Haider Javaid', '2020-10-01 10:29:43'),
(180, 'invoice', 33, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-01 10:54:03'),
(181, 'invoice', 33, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:6:\"fsdfsd\";}', '4', 'Haider Javaid', '2020-10-01 11:43:45'),
(182, 'estimate', 14, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-01 14:33:35'),
(183, 'invoice', 34, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-01 14:35:31'),
(184, 'estimate', 14, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/34\">INV-0102-20</a>\";}', '4', 'Haider Javaid', '2020-10-01 14:35:31'),
(185, 'estimate', 15, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-01 15:04:19'),
(186, 'estimate', 15, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:2:\"x1\";}', '4', 'Haider Javaid', '2020-10-01 15:05:23'),
(187, 'invoice', 35, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-01 15:05:42'),
(188, 'estimate', 15, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/35\">INV-0103-20</a>\";}', '4', 'Haider Javaid', '2020-10-01 15:05:42'),
(189, 'invoice', 35, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:4:\"X1 1\";}', '4', 'Haider Javaid', '2020-10-01 15:06:37'),
(190, 'invoice', 35, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '4', 'Haider Javaid', '2020-10-01 15:06:37'),
(191, 'estimate', 16, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-01 15:07:35'),
(192, 'invoice', 36, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-01 15:09:08'),
(193, 'estimate', 16, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/36\">INV-0104-20</a>\";}', '4', 'Haider Javaid', '2020-10-01 15:09:08'),
(194, 'estimate', 17, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-01 15:10:16'),
(195, 'invoice', 37, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-01 15:10:21'),
(196, 'estimate', 17, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/37\">INV-0105-20</a>\";}', '4', 'Haider Javaid', '2020-10-01 15:10:21'),
(197, 'estimate', 18, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-01 15:13:38'),
(198, 'invoice', 38, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-01 15:15:00'),
(199, 'estimate', 18, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/38\">INV-0106-20</a>\";}', '4', 'Haider Javaid', '2020-10-01 15:15:00'),
(200, 'invoice', 38, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:11:\"TestGroupX2\";}', '4', 'Haider Javaid', '2020-10-01 15:15:39'),
(201, 'invoice', 39, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-02 13:54:11'),
(202, 'invoice', 40, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-02 13:59:00'),
(203, 'invoice', 40, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:12:\"Test Product\";}', '4', 'Haider Javaid', '2020-10-02 14:59:51'),
(204, 'invoice', 40, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:12:\"Test Product\";}', '4', 'Haider Javaid', '2020-10-02 15:01:36'),
(205, 'invoice', 41, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-02 15:51:20'),
(206, 'invoice', 41, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:12:\"TestGp1 Item\";}', '4', 'Haider Javaid', '2020-10-02 15:52:03'),
(207, 'invoice', 42, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-02 15:55:37'),
(208, 'invoice', 42, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:9:\"X1g Item1\";}', '4', 'Haider Javaid', '2020-10-02 15:56:13'),
(209, 'invoice', 42, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:21:\"Marketing Outsourcing\";}', '4', 'Haider Javaid', '2020-10-02 15:57:00'),
(210, 'invoice', 42, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:19:\"Landing Page Design\";}', '4', 'Haider Javaid', '2020-10-02 15:57:00'),
(211, 'invoice', 42, 'invoice_estimate_activity_removed_item', 'a:1:{i:0;s:21:\"Reputation Management\";}', '4', 'Haider Javaid', '2020-10-02 15:57:00'),
(212, 'estimate', 1, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-06 04:34:13'),
(213, 'invoice', 43, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-06 05:41:32'),
(214, 'estimate', 1, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/43\">INV-0111-20</a>\";}', '4', 'Haider Javaid', '2020-10-06 05:41:32'),
(215, 'estimate', 2, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-06 06:03:37'),
(216, 'invoice', 44, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-06 06:04:16'),
(217, 'estimate', 2, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/44\">INV-0112-20</a>\";}', '4', 'Haider Javaid', '2020-10-06 06:04:16'),
(218, 'estimate', 4, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-06 06:11:22'),
(219, 'invoice', 46, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-06 06:13:55'),
(220, 'estimate', 4, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/46\">INV-0114-20</a>\";}', '4', 'Haider Javaid', '2020-10-06 06:13:55'),
(221, 'estimate', 5, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-06 06:15:23'),
(222, 'invoice', 47, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-06 06:15:30'),
(223, 'estimate', 5, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/47\">INV-0115-20</a>\";}', '4', 'Haider Javaid', '2020-10-06 06:15:30'),
(224, 'invoice', 48, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-07 07:45:40'),
(225, 'estimate', 6, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-07 08:37:43'),
(226, 'invoice', 48, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '4', 'Haider Javaid', '2020-10-07 10:54:28'),
(227, 'invoice', 48, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:9:\"$3,360.00\";i:1;s:87:\"<a href=\"http://localhost/airmediaex/admin/payments/payment/10\" target=\"_blank\">#10</a>\";}', '4', 'Haider Javaid', '2020-10-07 10:54:28'),
(228, 'invoice', 49, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-08 10:16:45'),
(229, 'invoice', 50, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-08 10:22:02'),
(230, 'estimate', 7, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-08 12:38:05'),
(231, 'invoice', 51, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-08 12:50:42'),
(232, 'invoice', 52, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-09 09:40:31'),
(233, 'estimate', 8, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-09 12:45:11'),
(234, 'invoice', 53, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-09 12:45:22'),
(235, 'estimate', 8, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/53\">INV-0121-20</a>\";}', '4', 'Haider Javaid', '2020-10-09 12:45:22'),
(236, 'invoice', 53, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:4:\"fdsf\";}', '4', 'Haider Javaid', '2020-10-09 12:45:46'),
(237, 'estimate', 9, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-14 05:47:53'),
(238, 'estimate', 10, 'estimate_activity_created', '', '4', 'Haider Javaid', '2020-10-14 06:18:40'),
(239, 'estimate', 10, 'invoice_estimate_activity_added_item', 'a:1:{i:0;s:5:\"gfdsf\";}', '4', 'Haider Javaid', '2020-10-14 06:19:57'),
(240, 'invoice', 54, 'invoice_activity_created', '', '4', 'Haider Javaid', '2020-10-14 06:24:30'),
(241, 'estimate', 10, 'estimate_activity_converted', 'a:1:{i:0;s:85:\"<a href=\"http://localhost/airmediaex/admin/invoices/list_invoices/54\">INV-0122-20</a>\";}', '4', 'Haider Javaid', '2020-10-14 06:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblscheduled_emails`
--

DROP TABLE IF EXISTS `tblscheduled_emails`;
CREATE TABLE IF NOT EXISTS `tblscheduled_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `contacts` varchar(197) NOT NULL,
  `cc` text DEFAULT NULL,
  `attach_pdf` tinyint(1) NOT NULL DEFAULT 1,
  `template` varchar(197) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

DROP TABLE IF EXISTS `tblservices`;
CREATE TABLE IF NOT EXISTS `tblservices` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsessions`
--

DROP TABLE IF EXISTS `tblsessions`;
CREATE TABLE IF NOT EXISTS `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('03vkashb1ovcfaov32mq93j9ftm1esic', '::1', 1602856315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835363331353b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('08s68jgip878af5cn25fqdmivedrhqko', '::1', 1603214345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333231343333393b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('0s4egd2rghivpus2h5q6rd1gucbms2ln', '::1', 1603105741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130353734313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('1fk7a5dcfja6khlc5o6fg8on8o5amfgk', '::1', 1602858809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835383830393b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('1t0rjob8mp9mvqm7cc9b162ufblq03ng', '::1', 1603096817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039363831373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('29hbnf13m9hi5kkiqegmp1t6a003qtki', '::1', 1602862200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323836323230303b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('3i1p15b5q7geqr7er29fadl6ujtm5dkj', '::1', 1602853961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835333936313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('3l989cocdti405b8ljgir0622ijjb4eo', '::1', 1603097591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039373539313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('3uekejt5ujbpj3u2j07mva6ic9notqt5', '::1', 1602857045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835373034353b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('65qthfrtru80srphbejb1h57deia7iiq', '::1', 1603105242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130353234323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('665qhmq59f2pdj285abfq1dabb40iccj', '::1', 1603095800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039353830303b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('6bu2531nfi6egf62i3n4cieds4pjel6p', '::1', 1602855301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835353330313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('6fkivve10sr7pu49c96hkgmgrk3op234', '::1', 1602846285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834363238353b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('6r1u5mknuilpktblbaaii5hige0taper', '::1', 1602863663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323836333636333b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('7tvvfdig65dehoja1m9okl37kvg4uqrl', '::1', 1603212976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333231323937363b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('8t89sbcpstqf27gec63qfddugfm8p9so', '::1', 1603099012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039393031323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('9jirjk6j4gf68p1mmjm359giumqgnfm7', '::1', 1602862582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323836323538323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('9nten5guub2l2d3h0ktqnkeri8jgit10', '::1', 1603099707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039393730373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('a2paongkvh7ntuqh4k81ut9eu9qs9nqn', '::1', 1603112504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333131323530343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('a64a045qalb549kfg4g018ga8o62ioel', '::1', 1603206560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230363536303b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('at5g6jsm0f84bpngr5bq9jq6jt0r80mu', '::1', 1603210518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333231303531383b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('b5gcljs9cog3rah2da8jjr4o4c6eqne6', '::1', 1603112712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333131323530343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('bh28d23d4unof861q356n9g0s5iqkgr5', '::1', 1602854626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835343632363b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('bjhglvq1fcetcibhn4o353r84g93nvfv', '::1', 1602857389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835373338393b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('c2nh8lpfimuid9er3c1595304lhfskoq', '::1', 1602841462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834313436323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('cc51h0460edkko0pgvoqsb0umkssfovn', '::1', 1603097959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039373935393b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('cibjdhumts8654aigos7uf4pf2juc5ae', '::1', 1603103543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130333534333b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('clj0eh1phddlqenv8qrvvf53ipt3m4hg', '::1', 1603103202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130333230323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('cnr1bgepumf4lg9usuabgvueq93hf8g0', '::1', 1603095494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039353439343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('co8s35gr2pf2620hqm1m5cfet4ipi77g', '::1', 1603094288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039343238383b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('cvqkg55vejtm5a79es6r0eqrg4123jku', '::1', 1603104568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130343536383b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('dc9l1ntnglln4pn8ot4b1itmnm3057lc', '::1', 1603102041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130323034313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('dlbcl50vs79equlnp66trlaqdi35j4bl', '::1', 1603208307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230383330373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('dn77re2d5ejm7iv0r39i5efn5m33h5dl', '::1', 1603209185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230393138353b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('e11mkme87otahfg5omg5cq6oe2tf1l7p', '::1', 1603104263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130343236333b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('e757rbufsgam7h0isnc039jifqa2oi69', '::1', 1602849856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834393835363b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ebrpgeqtt78dd1go5q5tl16pnqalj89a', '::1', 1603212391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333231323339313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('ei8hopgo8a8ldghc4mfj9lq5kp6v51kp', '::1', 1602844570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834343537303b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('fsa0g2nrl1b5gcj8g35un5rkl7fnr8jn', '::1', 1603102477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130323437373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('g279l8fbdn5nh0qoestl1euk337d3gph', '::1', 1603106528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130363532383b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('gldanbkl8utko0e8kv864o7i0uaufs7i', '::1', 1603093887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039333838373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('gqcfsof1aqit694r5niitqttrhvdgvvl', '::1', 1603102794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130323739343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('gu3cmu633c26eop907829kd8b5rtefao', '::1', 1603097212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039373231323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('h731hu9ok739nvd6urlu0i93vtpipas2', '::1', 1603103858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130333835383b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('hf7qmq1htkoasov2adg1cv5v5q65k87g', '::1', 1603212067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333231323036373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('i5de3l0env8s5cqlissv9on7vppn4dq6', '::1', 1602863964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323836333936343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('j7r7ju390i6qjqpidvhngtur5fdu35bg', '::1', 1603098284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039383238343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ja3e7flheabjmaqo4jecfm64jh0nj8nb', '::1', 1602844004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834343030343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('jbd3f787i7mt561u4dg1tvkfso66361p', '::1', 1602858112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835383131323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('k7fkid8s4ar02qc6r3judbbi50ck4d42', '::1', 1603207657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230373635373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('ktbrgirbjd4b3dhrem1pctc5pk27a5bh', '::1', 1602839827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323833393832373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('lktr3421jl62ddvgsi89d31n6idmpsc9', '::1', 1602864145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323836333936343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('m515d7qrkl5e3beak6am0g83jtktq9n5', '::1', 1602858490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835383439303b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('mfam1upjch0ku759tcevmd8fpfb7c8v1', '::1', 1603205782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230353738323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('n8p9h5ichqhm8svho2t8rl6gi07shvi9', '::1', 1602849266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834393236363b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ngqaqub7a4lec35k2utsj7qc274q25th', '::1', 1602854301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835343330313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('oamma9ku3oak426m1qdmgd8lf5v6uo4g', '::1', 1602845381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834353338313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('omn9h0rd3ud6kftu00q3695r7enq9kta', '::1', 1603095102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039353130323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ootbg203h1acvpac856ttvg1l235sa2q', '::1', 1603213595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333231333539353b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('opramvj92fcvm1uboaq68qh1la8redo2', '::1', 1602856664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835363636343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('p63vs2f9tsrhlrj397lv1ah1nsoejsip', '::1', 1602862996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323836323939363b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('pftsc3igc4vo80c5oupmsmia96v1h8j1', '::1', 1602847386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834373338363b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('q1ffngjj9scfv29aabvn76m8bc5hkia4', '::1', 1603206123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230363132333b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('q5ae11t3ha72jmjk0s4umuv6l8fl8c5t', '::1', 1603204741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230343734313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('qhft4cofb7t7h06tms09ucjc27jqjvlv', '::1', 1602843650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834333635303b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('qks8nsspt4d380nia0p15o5ljj7kquh6', '::1', 1603101171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130313137313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('r0jariurrcoqph90t219udp5njbv6jh5', '::1', 1603214339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333231343333393b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('r1rar82qt8e16em67d4nevbocqk047vn', '::1', 1603214022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333231343032323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('rb0noep5autradd40u7hgvnbtbsufkgr', '::1', 1602857765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835373736353b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('rd01579aj5f1i73ungc0g127caiejscs', '::1', 1602841104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834313130343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('rh9f6coed0622i5o6h9tk3rfne41ja1i', '::1', 1602863342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323836333334323b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('rslggba69rd4puk9mutoca647gmiiova', '::1', 1602850368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323835303336383b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('sb14qug4m6cb3frp74fn961p11kr29bt', '::1', 1602847733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834373733333b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('sdo7mesit70bn4oi41ovb2ad41ech6j6', '::1', 1602848738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834383733383b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('sjcmccfr9adlcnf5bughlohtshd2bmnt', '::1', 1603094846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039343734393b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('sjrse1i9k17hi4ehalskmes0laol0uo7', '::1', 1603100061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130303036313b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('skr14cejv93c91mhilji8llgdoc7vp4i', '::1', 1603098654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039383635343b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('t59mke3ptsjnth1ji1uiniucsb4lfar2', '::1', 1603106185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130363138353b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('t9qps7s5bockb1lc4tak83gv9nidvnhj', '::1', 1603209486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230393438363b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('td75mcc938ddr3dfg0t0oc9ifmfvail7', '::1', 1603205087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333230353038373b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('tpkup0tf3skokk1l223qpoqm0hrskknp', '::1', 1603104913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130343931333b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('tvpchvu0s02vogjbuduhskdq1ddr3oth', '::1', 1602845723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323834353732333b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('u8glcgomaa0a574mmhkgevoorvj0sb63', '::1', 1603099400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333039393430303b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('utv7c5dpqjbbat2upl8ci9cjcncel332', '::1', 1603101659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130313635393b73746166665f757365725f69647c733a313a2234223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `tblshared_customer_files`
--

DROP TABLE IF EXISTS `tblshared_customer_files`;
CREATE TABLE IF NOT EXISTS `tblshared_customer_files` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblshared_opportunity_files`
--

DROP TABLE IF EXISTS `tblshared_opportunity_files`;
CREATE TABLE IF NOT EXISTS `tblshared_opportunity_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opportunity_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblspam_filters`
--

DROP TABLE IF EXISTS `tblspam_filters`;
CREATE TABLE IF NOT EXISTS `tblspam_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `rel_type` varchar(10) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

DROP TABLE IF EXISTS `tblstaff`;
CREATE TABLE IF NOT EXISTS `tblstaff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext DEFAULT NULL,
  `linkedin` mediumtext DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(191) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `two_factor_auth_enabled` tinyint(1) DEFAULT 0,
  `two_factor_auth_code` varchar(100) DEFAULT NULL,
  `two_factor_auth_code_requested` datetime DEFAULT NULL,
  `email_signature` text DEFAULT NULL,
  `google_auth_secret` text DEFAULT NULL,
  PRIMARY KEY (`staffid`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_activity`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `two_factor_auth_enabled`, `two_factor_auth_code`, `two_factor_auth_code_requested`, `email_signature`, `google_auth_secret`) VALUES
(1, 'andrew@air-media.ca', 'Andrew', 'Gordon', NULL, NULL, NULL, NULL, '$2a$08$OghDBfH90Pdp4t/HjzQ3DePjkKfx6O.iU3FpGj9FRg5Ytf8UTqwXG', '2020-04-18 03:38:39', NULL, '64.137.156.188', '2020-09-10 10:18:19', '2020-09-10 16:11:02', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, 0, '0.00', 0, NULL, NULL, NULL, NULL),
(2, 'Igor@air-media.ca', 'Igor', 'Silva', '', '', '', '', '$2a$08$ojxZQ1KJjTUhkhEfYmWLGeE7rcdiHjRPIfFZZCiTWMY1m5RPGcbg6', '2020-04-18 16:40:35', NULL, '198.84.189.167', '2020-08-31 20:18:33', '2020-08-31 20:24:24', NULL, NULL, NULL, 1, 1, 1, '', '', 'igor-silva', 0, '85.00', 0, NULL, NULL, '', NULL),
(3, 'tommyliu9009@qq.com', 'Tom', 'Liu', '', '', '', '', '$2a$08$XpPtQ3jolmSgHyuFeAvvW.lx1xlZMmMEawOjyewHxP/QNv2b3YI6C', '2020-04-20 16:22:44', NULL, '99.230.148.132', '2020-05-14 19:10:46', '2020-05-14 19:19:30', NULL, NULL, NULL, 0, 1, 1, '', '', 'tom-liu', 1, '23.00', 0, NULL, NULL, '', NULL),
(4, 'haadi.javaid@gmail.com', 'Haider', 'Javaid', '', '', '', 'haadi.javaid', '$2a$08$tPyAx1h7CAe.79lvPGCIjOKDYklsrLs6/3xck6hIjIBesKtJGbGA2', '2020-04-21 22:48:56', NULL, '::1', '2020-10-20 10:33:46', '2020-10-20 13:19:05', NULL, NULL, NULL, 1, 2, 1, '', '', 'haider-javaid', 0, '22.00', 0, NULL, NULL, '', NULL),
(5, 'cccforde@gmail.com', 'Cory', 'Forde', '', '', '+16477462055', '', '$2a$08$QOUoJX97JCHcLWD1n3fOG.R3Z.DVjApxq2Z2KJmdaMTOkg36YsV.q', '2020-05-12 16:11:33', NULL, '99.231.147.168', '2020-05-12 23:51:53', '2020-05-12 23:51:57', NULL, NULL, NULL, 0, 2, 1, '', '', 'cory-forde', 1, '25.00', 0, NULL, NULL, '', NULL),
(6, 'igfernando@gmail.com', 'Staff Igor', 'Silva', '', '', '', '', '$2a$08$fLZKCkO1MlmpG6dKVbd1a.7pYt30C7odBvNwUlkrCRHlPckjYIn0e', '2020-05-12 16:25:10', NULL, '198.84.189.167', '2020-05-12 21:44:49', '2020-05-12 22:30:59', NULL, NULL, NULL, 0, 1, 1, '', '', 'staff-igor-silva', 0, '20.00', 0, NULL, NULL, '', NULL),
(7, 'Theodora.doukas28@gmail.com', 'Theodora', 'Doukas', '', '', '', '', '$2a$08$ouRwT3m3cDuMhZUvfyvR.OdH/1FJfgwcVYrGFPtRxkfm/drVK8xwi', '2020-09-01 15:19:25', NULL, '99.230.148.92', '2020-09-10 15:18:07', '2020-09-10 15:25:43', NULL, NULL, NULL, 0, 1, 1, '', '', 'theodora-doukas', 0, '25.00', 0, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_departments`
--

DROP TABLE IF EXISTS `tblstaff_departments`;
CREATE TABLE IF NOT EXISTS `tblstaff_departments` (
  `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  PRIMARY KEY (`staffdepartmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_permissions`
--

DROP TABLE IF EXISTS `tblstaff_permissions`;
CREATE TABLE IF NOT EXISTS `tblstaff_permissions` (
  `staff_id` int(11) NOT NULL,
  `feature` varchar(40) NOT NULL,
  `capability` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff_permissions`
--

INSERT INTO `tblstaff_permissions` (`staff_id`, `feature`, `capability`) VALUES
(3, 'projects', 'view'),
(3, 'projects', 'create'),
(3, 'tasks', 'view'),
(3, 'tasks', 'create'),
(3, 'tasks', 'edit'),
(7, 'contracts', 'create'),
(7, 'contracts', 'edit'),
(7, 'customers', 'view'),
(7, 'customers', 'create'),
(7, 'customers', 'edit'),
(7, 'estimates', 'view'),
(7, 'estimates', 'create'),
(7, 'estimates', 'edit'),
(7, 'expenses', 'view'),
(7, 'expenses', 'create'),
(7, 'expenses', 'edit'),
(7, 'items', 'view'),
(7, 'items', 'create'),
(7, 'items', 'edit'),
(7, 'knowledge_base', 'view'),
(7, 'knowledge_base', 'create'),
(7, 'knowledge_base', 'edit'),
(7, 'projects', 'view'),
(7, 'projects', 'create'),
(7, 'projects', 'edit'),
(7, 'proposals', 'view'),
(7, 'proposals', 'create'),
(7, 'proposals', 'edit'),
(7, 'tasks', 'view'),
(7, 'tasks', 'create'),
(7, 'tasks', 'edit'),
(7, 'checklist_templates', 'create'),
(7, 'leads', 'view'),
(7, 'opportunities', 'view'),
(7, 'opportunities', 'create'),
(7, 'opportunities', 'edit'),
(7, 'call_logs', 'view'),
(7, 'call_logs', 'create'),
(7, 'call_logs', 'edit'),
(7, 'resource_booking', 'view'),
(7, 'resource_booking', 'create'),
(7, 'resource_booking', 'edit'),
(7, 'team_password', 'view'),
(7, 'team_password', 'create'),
(7, 'team_password', 'edit');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriptions`
--

DROP TABLE IF EXISTS `tblsubscriptions`;
CREATE TABLE IF NOT EXISTS `tblsubscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `description_in_item` tinyint(1) NOT NULL DEFAULT 0,
  `clientid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `stripe_tax_id` varchar(50) DEFAULT NULL,
  `tax_id_2` int(11) NOT NULL DEFAULT 0,
  `stripe_tax_id_2` varchar(50) DEFAULT NULL,
  `stripe_plan_id` text DEFAULT NULL,
  `stripe_subscription_id` text NOT NULL,
  `next_billing_cycle` bigint(20) DEFAULT NULL,
  `ends_at` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `created_from` int(11) NOT NULL,
  `date_subscribed` datetime DEFAULT NULL,
  `in_test_environment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `currency` (`currency`),
  KEY `tax_id` (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsubscriptions`
--

INSERT INTO `tblsubscriptions` (`id`, `name`, `description`, `description_in_item`, `clientid`, `date`, `terms`, `currency`, `tax_id`, `stripe_tax_id`, `tax_id_2`, `stripe_tax_id_2`, `stripe_plan_id`, `stripe_subscription_id`, `next_billing_cycle`, `ends_at`, `status`, `quantity`, `project_id`, `hash`, `created`, `created_from`, `date_subscribed`, `in_test_environment`) VALUES
(1, 'Google Suite - Reverse Margin', 'Google Suite Applications Managed<br />\r\n-Gmail<br />\r\n-GSuite<br />\r\n-Storage', 0, 1, '2020-05-01', '', 3, 1, 'txr_1GbCma4309uSzfMPa0ODcx8w', 0, NULL, 'AIR-GSM', '', NULL, NULL, NULL, 5, 0, 'e8eea8f4d15543485b40d2b19db08b93', '2020-04-23 17:41:45', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsurveyresultsets`
--

DROP TABLE IF EXISTS `tblsurveyresultsets`;
CREATE TABLE IF NOT EXISTS `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`resultsetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsurveys`
--

DROP TABLE IF EXISTS `tblsurveys`;
CREATE TABLE IF NOT EXISTS `tblsurveys` (
  `surveyid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT 0,
  `onlyforloggedin` int(11) DEFAULT 0,
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`surveyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsurveysemailsendcron`
--

DROP TABLE IF EXISTS `tblsurveysemailsendcron`;
CREATE TABLE IF NOT EXISTS `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsurveysendlog`
--

DROP TABLE IF EXISTS `tblsurveysendlog`;
CREATE TABLE IF NOT EXISTS `tblsurveysendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT 0,
  `send_to_mail_lists` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaggables`
--

DROP TABLE IF EXISTS `tbltaggables`;
CREATE TABLE IF NOT EXISTS `tbltaggables` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT 0,
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltaggables`
--

INSERT INTO `tbltaggables` (`rel_id`, `rel_type`, `tag_id`, `tag_order`) VALUES
(1, 'proposal', 1, 1),
(3, 'proposal', 1, 1),
(5, 'project', 1, 1),
(5, 'project', 2, 2),
(47, 'task', 2, 1),
(47, 'task', 1, 2),
(50, 'task', 2, 1),
(50, 'task', 1, 2),
(50, 'task', 4, 3),
(6, 'project', 4, 1),
(6, 'project', 2, 2),
(6, 'project', 1, 3),
(52, 'task', 5, 1),
(56, 'task', 6, 1),
(56, 'task', 7, 2),
(56, 'task', 5, 3),
(56, 'task', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbltags`
--

DROP TABLE IF EXISTS `tbltags`;
CREATE TABLE IF NOT EXISTS `tbltags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltags`
--

INSERT INTO `tbltags` (`id`, `name`) VALUES
(4, 'Advertising'),
(3, 'Advertising Budget'),
(7, 'CANADA'),
(1, 'Dental'),
(5, 'eblast'),
(2, 'Seminar'),
(6, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks`
--

DROP TABLE IF EXISTS `tbltasks`;
CREATE TABLE IF NOT EXISTS `tbltasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_added_from_contact` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `billable` tinyint(1) NOT NULL DEFAULT 0,
  `billed` tinyint(1) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `milestone` int(11) DEFAULT 0,
  `kanban_order` int(11) NOT NULL DEFAULT 0,
  `milestone_order` int(11) NOT NULL DEFAULT 0,
  `visible_to_client` tinyint(1) NOT NULL DEFAULT 0,
  `deadline_notified` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `milestone` (`milestone`),
  KEY `kanban_order` (`kanban_order`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltasks`
--

INSERT INTO `tbltasks` (`id`, `name`, `description`, `priority`, `dateadded`, `startdate`, `duedate`, `datefinished`, `addedfrom`, `is_added_from_contact`, `status`, `recurring_type`, `repeat_every`, `recurring`, `is_recurring_from`, `cycles`, `total_cycles`, `custom_recurring`, `last_recurring_date`, `rel_id`, `rel_type`, `is_public`, `billable`, `billed`, `invoice_id`, `hourly_rate`, `milestone`, `kanban_order`, `milestone_order`, `visible_to_client`, `deadline_notified`) VALUES
(1, 'Home Page Design and Overall Website Style', '', 3, '2020-04-23 11:42:53', '2020-04-23', '2020-05-07', NULL, 2, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 2, 'project', 1, 1, 0, 0, '0.00', 2, 0, 0, 0, 0),
(2, 'Produce updated RM 3D files and animations', '', 3, '2020-04-23 11:48:12', '2020-04-30', '2020-05-07', NULL, 2, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 2, 'project', 1, 1, 0, 0, '0.00', 2, 0, 0, 0, 0),
(3, 'Get all 3D Files from Lab', '', 2, '2020-04-23 11:49:01', '2020-04-23', NULL, '2020-06-08 08:58:12', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 2, 'project', 1, 0, 0, 0, '0.00', 5, 0, 0, 0, 0),
(4, 'Profiles 1.1', '', 2, '2020-05-11 20:46:47', '2020-05-11', '2020-05-15', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 1, 1, 10, '85.00', 6, 16, 0, 0, 0),
(5, 'Contacts', '', 2, '2020-05-11 21:11:30', '2020-05-11', '2020-05-15', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '0.00', 6, 11, 3, 0, 0),
(6, 'Notes', '', 2, '2020-05-11 21:12:29', '2020-05-11', '2020-05-15', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '0.00', 6, 0, 2, 0, 0),
(7, 'Proposal', '', 2, '2020-05-11 21:13:03', '2020-05-11', '2020-05-15', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '85.00', 6, 10, 1, 0, 0),
(8, 'Estimates', '', 2, '2020-05-11 21:17:44', '2020-05-11', '2020-05-15', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '0.00', 6, 13, 0, 0, 0),
(9, 'Expenses', '', 2, '2020-05-11 21:18:05', '2020-05-18', '2020-05-22', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '0.00', 7, 15, 0, 0, 0),
(10, 'Tasks', '', 2, '2020-05-11 21:19:03', '2020-05-18', '2020-05-22', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '85.00', 7, 8, 1, 0, 0),
(11, 'Files', '', 2, '2020-05-11 21:20:28', '2020-05-18', '2020-05-22', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '68.00', 7, 1, 2, 0, 0),
(12, 'Call Logs', '', 2, '2020-05-11 21:20:47', '2020-05-11', NULL, NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '68.00', 7, 9, 3, 0, 0),
(13, 'Team ', '', 2, '2020-05-11 21:21:29', '2020-05-25', '2020-05-29', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '0.00', 8, 7, 0, 0, 0),
(14, 'Activity', '', 2, '2020-05-11 21:23:46', '2020-05-25', '2020-05-29', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '68.00', 8, 12, 0, 0, 0),
(15, 'Phase 1 Tests', '', 2, '2020-05-11 21:25:06', '2020-05-27', '2020-05-29', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '0.00', 9, 2, 1, 0, 0),
(16, 'Phase 2 Tests', '', 2, '2020-05-11 21:25:27', '2020-05-27', '2020-05-29', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '68.00', 9, 3, 2, 0, 0),
(17, 'Phase 3 Tests', '', 2, '2020-05-11 21:25:51', '2020-05-27', '2020-05-29', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '68.00', 9, 4, 3, 0, 0),
(18, 'Opportunity Module Tests', '', 2, '2020-05-11 21:27:53', '2020-05-30', '2020-05-31', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '0.00', 10, 6, 0, 0, 0),
(19, 'Sales Journey Tests', '', 2, '2020-05-11 21:28:31', '2020-05-30', '2020-05-31', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '68.00', 10, 5, 0, 0, 0),
(20, 'Profile Permissions', '', 2, '2020-05-11 22:24:16', '2020-05-04', '2020-05-11', NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 3, 'project', 0, 0, 0, 0, '68.00', 6, 14, 0, 0, 0),
(21, 'Get content from Christine', '', 2, '2020-05-12 21:33:48', '2020-05-12', '2020-05-11', '2020-05-12 21:50:26', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 1, 0, 0, 0, '0.00', 12, 0, 0, 1, 0),
(22, 'Prepare Page Layout Banners and graphics', '<p>TOM to create the necessary Graphic Design and page layout for RM Webinar landing page.</p>', 2, '2020-05-12 21:38:01', '2020-05-12', '2020-05-15', '2020-06-08 14:42:31', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 1, 0, 0, '0.00', 12, 0, 0, 1, 0),
(23, 'Page development', '', 2, '2020-05-12 21:40:55', '2020-05-14', '2020-05-15', '2020-06-08 08:59:48', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 1, 0, 0, '0.00', 12, 1, 0, 1, 0),
(24, 'Desktop and Mobile Adjustments and testing', '', 2, '2020-05-12 21:42:37', '2020-05-12', '2020-05-18', '2020-07-28 00:06:59', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 12, 1, 0, 1, 0),
(25, 'RM\'s Event/Webinar Management System', '', 2, '2020-05-12 21:51:46', '2020-05-12', '2020-05-17', '2020-07-28 00:07:10', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 1, 0, 0, '0.00', 13, 5, 0, 1, 0),
(26, 'System integration with WooCommerce and a Payment Gateway', '<p>Back end integration of zoom webinar, payment merchant and Events plugin for RM website</p>', 2, '2020-05-12 21:53:39', '2020-05-12', '2020-05-23', '2020-06-29 21:56:51', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, 0, '25.00', 15, 0, 0, 0, 0),
(27, 'Integration with Zoom  Webinar 3rd party System', '', 2, '2020-05-12 21:54:40', '2020-05-12', '2020-05-17', '2020-07-28 00:06:44', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 1, 0, 0, '0.00', 13, 2, 0, 1, 0),
(28, 'Front-end / Back-end test of settings, features and registration process', '', 2, '2020-05-12 22:11:14', '2020-05-12', '2020-05-18', '2020-07-28 00:06:49', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 1, 0, 0, '0.00', 13, 3, 0, 1, 0),
(29, 'Set up Facebook and Google ads account', '', 2, '2020-05-12 22:16:36', '2020-05-12', '2020-05-19', '2020-07-28 00:07:20', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 14, 1, 0, 1, 0),
(30, 'Prepare and Design ads content and posts', '', 2, '2020-05-12 22:17:09', '2020-05-12', '2020-05-20', '2020-07-28 00:11:52', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 14, 5, 0, 1, 0),
(31, 'Schedule ads and budget', '', 2, '2020-05-12 22:17:51', '2020-05-12', '2020-05-19', '2020-07-28 00:10:41', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 14, 7, 0, 1, 0),
(32, 'Ads Friday Report', '', 2, '2020-05-12 22:18:59', '2020-05-12', '2020-05-22', NULL, 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 14, 6, 0, 1, 0),
(33, 'Prepare all email notifications (CONTENT)', '', 2, '2020-05-12 22:20:43', '2020-05-12', '2020-05-19', '2020-07-28 00:09:25', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 1, 0, 0, '0.00', 15, 0, 0, 1, 0),
(34, 'Create and Promote an event on website', '', 2, '2020-05-12 22:21:24', '2020-05-12', '2020-05-19', '2020-07-28 00:08:03', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 15, 8, 0, 1, 0),
(35, 'Sign up and pay for webinar', '', 2, '2020-05-12 22:21:52', '2020-05-12', '2020-05-19', '2020-07-28 00:08:28', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 15, 4, 0, 1, 0),
(36, 'Receive Zoom link and enter a session', '', 2, '2020-05-12 22:22:42', '2020-05-12', '2020-05-19', NULL, 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 15, 9, 0, 1, 0),
(37, 'Create Email template for RM internal email sendouts', '', 2, '2020-05-14 18:56:55', '2020-05-12', '2020-05-15', '2020-07-28 00:06:31', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 14, 1, 0, 1, 0),
(38, 'Email Setup', '', 2, '2020-07-17 15:30:33', '2020-07-10', '2020-07-17', '2020-08-01 16:39:00', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 1, 11, '65.00', 17, 0, 0, 0, 0),
(39, 'Cloud Flare', 'create CF account for pointer to Gsuite and protection.&#160;', 2, '2020-07-17 16:14:40', '2020-07-17', '2020-07-17', '2020-08-01 16:39:00', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 1, 11, '0.00', 16, 0, 1, 0, 0),
(41, 'Email Template', '', 2, '2020-07-17 16:15:18', '2020-07-17', NULL, '2020-08-01 16:39:00', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 1, 11, '0.00', 18, 0, 2, 0, 0),
(42, 'Shortener', '', 2, '2020-07-17 16:15:28', '2020-07-17', NULL, '2020-08-01 16:39:00', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 0, 0, 0, '0.00', 18, 0, 0, 0, 0),
(43, 'QR Code', '', 2, '2020-07-17 16:15:39', '2020-07-17', NULL, '2020-08-01 16:39:00', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 0, 0, '0.00', 18, 0, 1, 0, 0),
(44, 'GSuite Setup', '', 2, '2020-07-17 16:16:11', '2020-07-17', '2020-07-21', '2020-08-01 16:39:00', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 1, 11, '0.00', 17, 0, 3, 0, 0),
(45, 'Link Test', '', 2, '2020-07-17 16:18:53', '2020-07-17', NULL, '2020-08-01 16:39:00', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 0, 0, '0.00', 17, 0, 0, 0, 0),
(46, 'Webinar Page content and layout update x 3', 'Web page update as per Emil\'s and Christine\'s emails', 2, '2020-07-28 00:37:32', '2020-06-23', '2020-06-25', '2020-08-01 16:39:00', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 1, 11, '0.00', 0, 0, 0, 0, 0),
(47, 'Webinar Page Emergency Overhaul - Eventbrite Setup', 'Necessary overhaul of webinar page into a new eventbrite landing page. Including design, setup and test.', 4, '2020-07-28 01:06:47', '2020-07-13', '2020-07-14', '2020-08-01 16:39:00', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 1, 11, '0.00', 0, 0, 0, 0, 0),
(48, 'Webinar Eventbrite New Ads strategy pixel setup', 'Eventbrite tracking pixel setup, testing and validation with multiple ads.', 2, '2020-07-28 01:10:20', '2020-07-28', NULL, '2020-08-01 16:39:00', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 5, 'project', 0, 1, 1, 11, '0.00', 0, 0, 0, 0, 0),
(50, 'Webinar Ads Admin', '', 2, '2020-07-28 01:22:28', '2020-07-15', '2020-08-14', '2020-08-15 22:45:31', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 6, 'project', 0, 1, 0, 0, '0.00', 0, 0, 0, 0, 0),
(51, 'Webinar ads rebranding', 'Current webinar ads have exausted the budget with no results, working on a content and artwork rebranding in order to save the project', 2, '2020-07-28 12:06:03', '2020-07-28', '2020-08-15', '2020-08-15 22:45:31', 2, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 6, 'project', 0, 0, 0, 0, '0.00', 0, 0, 0, 0, 0),
(52, 'EBLAST: Palmeri', 'Canadian&#160;<br>US Dentists', 2, '2020-08-06 16:18:56', '2020-07-21', NULL, '2020-08-15 22:45:31', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 6, 'project', 1, 0, 0, 0, '0.00', 0, 0, 0, 0, 0),
(53, 'EBLAST: Dental Speaker Bureau', 'Local TO Dentists<br>Lab Techs', 2, '2020-08-06 16:20:09', '2020-07-23', NULL, '2020-08-15 22:45:31', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 6, 'project', 0, 0, 0, 0, '0.00', 0, 0, 0, 0, 0),
(54, 'EBLAST: Palmeri 2', 'Canadian&#160;<br>US Dentists', 2, '2020-08-06 16:23:37', '2020-07-29', '2020-07-29', '2020-08-15 22:45:31', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 6, 'project', 1, 0, 0, 0, '0.00', 0, 0, 0, 0, 0),
(55, 'EBLAST: Dental Speakers Burearu', 'GTA Dentists &amp; Technicians', 2, '2020-08-06 16:24:42', '2020-07-31', '2020-07-31', '2020-08-15 22:45:31', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 6, 'project', 0, 0, 0, 0, '0.00', 0, 0, 0, 0, 0),
(56, 'EBLAST: Palmeri 3', 'US &amp; CAN Dentists', 2, '2020-08-06 16:25:34', '2020-08-05', '2020-08-05', '2020-08-15 22:45:31', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 6, 'project', 0, 0, 0, 0, '0.00', 0, 0, 0, 0, 0),
(58, 'Meetings', '', 2, '2020-08-23 23:20:43', '2020-08-23', NULL, NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '85.00', 0, 0, 0, 0, 0),
(59, 'Pre Meeting', '', 2, '2020-08-23 23:27:48', '2020-08-23', NULL, NULL, 1, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 0, 0, 0, 0, 0),
(60, 'Seminar Management', '', 3, '2020-08-23 23:32:28', '2020-08-13', '2020-08-15', '2020-08-23 23:35:06', 1, 0, 5, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 0, 0, 0, '0.00', 0, 0, 0, 0, 0),
(61, 'Setup protected video hosting for customer\'s 90 day access', '', 3, '2020-08-31 20:21:02', '2020-08-28', '2020-09-02', NULL, 2, 0, 4, NULL, 0, 0, NULL, 0, 0, 0, NULL, 4, 'project', 0, 1, 0, 0, '0.00', 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskstimers`
--

DROP TABLE IF EXISTS `tbltaskstimers`;
CREATE TABLE IF NOT EXISTS `tbltaskstimers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltaskstimers`
--

INSERT INTO `tbltaskstimers` (`id`, `task_id`, `start_time`, `end_time`, `staff_id`, `hourly_rate`, `note`) VALUES
(2, 22, '1589498129', '1589498133', 3, '23.00', NULL),
(4, 26, '1593453369', '1593482169', 5, '25.00', 'Back end integration of zoom webinar, payment merchant and Events plugin for RM website'),
(5, 44, '1595358601', '1595358605', 1, '0.00', NULL),
(6, 38, '1595467716', '1595468616', 1, '0.00', NULL),
(7, 38, '1595467429', '1595468629', 1, '0.00', NULL),
(8, 38, '1595468576', '1595468636', 1, '0.00', NULL),
(9, 39, '1595467492', '1595468692', 1, '0.00', NULL),
(10, 41, '1595460767', '1595468867', 1, '0.00', NULL),
(11, 41, '1595464393', '1595468893', 1, '0.00', NULL),
(13, 46, '1589914800', '1589925600', 2, '85.00', 'Update according to Email and attach from May 16 200516 ES'),
(16, 46, '1594148400', '1594155600', 2, '85.00', 'Webinar Page update as per Emil\'s email from July 7, attachment 200706'),
(17, 46, '1591297200', '1591304400', 2, '85.00', 'Webinar Update as per Christine Email from June 2nd, Attachment 200531-Revise ES'),
(18, 47, '1594749600', '1594767600', 2, '85.00', NULL),
(19, 48, '1594818000', '1594828800', 2, '85.00', 'Setup of Eventbrite tracking and ads, cancellation of previous ads tracking. Setup of Ads and Ads Ai strategy'),
(20, 44, '1595343600', '1595347200', 1, '0.00', NULL),
(21, 44, '1595530800', '1595534400', 1, '0.00', NULL),
(23, 51, '1595962500', '1595965200', 2, '85.00', 'Rebranding Ads and content for Round 2 of promotions'),
(24, 51, '1596567600', '1596571200', 2, '85.00', NULL),
(25, 51, '1597197600', '1597200300', 2, '85.00', NULL),
(26, 50, '1595354400', '1595357100', 2, '85.00', NULL),
(29, 58, '1597330800', '1597334400', 1, '0.00', NULL),
(30, 58, '1597330800', '1597334400', 2, '85.00', NULL),
(31, 58, '1597417200', '1597420800', 1, '0.00', NULL),
(32, 58, '1597417200', '1597420800', 2, '85.00', NULL),
(33, 58, '1597503600', '1597507200', 1, '0.00', NULL),
(34, 58, '1597503600', '1597507200', 2, '85.00', NULL),
(36, 59, '1597275000', '1597283100', 1, '0.00', NULL),
(37, 59, '1597275000', '1597282200', 2, '85.00', NULL),
(38, 58, '1597686660', '1597689660', 1, '0.00', NULL),
(39, 60, '1598231021', '1598240021', 1, '0.00', NULL),
(40, 60, '1598231035', '1598240035', 1, '0.00', 'Seminar 2'),
(41, 60, '1598231051', '1598240051', 1, '0.00', 'Seminar 3'),
(42, 60, '1598231068', '1598240068', 2, '85.00', 'Seminar 1'),
(43, 60, '1598231076', '1598240076', 2, '85.00', 'Seminar 2'),
(45, 61, '1598904000', '1598911200', 2, '85.00', 'Upload videos to youtube<br />\nSetup and configure restricted access page.');

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks_checklist_templates`
--

DROP TABLE IF EXISTS `tbltasks_checklist_templates`;
CREATE TABLE IF NOT EXISTS `tbltasks_checklist_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_assigned`
--

DROP TABLE IF EXISTS `tbltask_assigned`;
CREATE TABLE IF NOT EXISTS `tbltask_assigned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT 0,
  `is_assigned_from_contact` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`),
  KEY `staffid` (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltask_assigned`
--

INSERT INTO `tbltask_assigned` (`id`, `staffid`, `taskid`, `assigned_from`, `is_assigned_from_contact`) VALUES
(1, 2, 1, 2, 0),
(2, 2, 2, 2, 0),
(3, 1, 3, 1, 0),
(5, 4, 4, 1, 0),
(6, 1, 5, 1, 0),
(7, 1, 6, 1, 0),
(8, 1, 7, 1, 0),
(9, 1, 8, 1, 0),
(10, 1, 9, 1, 0),
(11, 1, 10, 1, 0),
(12, 1, 11, 1, 0),
(13, 1, 12, 1, 0),
(14, 1, 13, 1, 0),
(15, 1, 14, 1, 0),
(16, 1, 15, 1, 0),
(17, 1, 16, 1, 0),
(18, 1, 17, 1, 0),
(19, 1, 18, 1, 0),
(20, 1, 19, 1, 0),
(21, 1, 20, 1, 0),
(22, 2, 21, 2, 0),
(23, 2, 22, 2, 0),
(24, 2, 23, 2, 0),
(25, 2, 24, 2, 0),
(27, 3, 22, 2, 0),
(28, 2, 25, 2, 0),
(29, 2, 26, 2, 0),
(30, 2, 27, 2, 0),
(31, 2, 28, 2, 0),
(32, 2, 29, 2, 0),
(33, 2, 30, 2, 0),
(34, 2, 31, 2, 0),
(35, 2, 32, 2, 0),
(36, 2, 33, 2, 0),
(37, 2, 34, 2, 0),
(38, 2, 35, 2, 0),
(39, 2, 36, 2, 0),
(40, 5, 25, 2, 0),
(41, 5, 26, 2, 0),
(42, 5, 27, 2, 0),
(43, 5, 28, 2, 0),
(44, 6, 33, 2, 0),
(45, 2, 37, 2, 0),
(46, 1, 38, 1, 0),
(47, 1, 39, 1, 0),
(49, 1, 41, 1, 0),
(50, 1, 42, 1, 0),
(51, 1, 43, 1, 0),
(52, 1, 44, 1, 0),
(53, 1, 45, 1, 0),
(54, 2, 46, 2, 0),
(55, 2, 47, 2, 0),
(56, 2, 48, 2, 0),
(58, 2, 50, 2, 0),
(59, 2, 51, 2, 0),
(60, 1, 52, 1, 0),
(61, 1, 53, 1, 0),
(62, 1, 54, 1, 0),
(63, 1, 55, 1, 0),
(64, 1, 56, 1, 0),
(66, 2, 58, 1, 0),
(67, 1, 58, 1, 0),
(68, 1, 59, 1, 0),
(69, 2, 59, 1, 0),
(70, 1, 60, 1, 0),
(71, 2, 60, 1, 0),
(72, 2, 61, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_checklist_items`
--

DROP TABLE IF EXISTS `tbltask_checklist_items`;
CREATE TABLE IF NOT EXISTS `tbltask_checklist_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `description` text NOT NULL,
  `finished` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT 0,
  `list_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltask_checklist_items`
--

INSERT INTO `tbltask_checklist_items` (`id`, `taskid`, `description`, `finished`, `dateadded`, `addedfrom`, `finished_from`, `list_order`) VALUES
(2, 2, 'Get the most up to date 3D files from RM', 1, '2020-04-23 11:51:32', 2, 2, 2),
(3, 2, 'get/confirm video content and tech explanation', 0, '2020-04-23 11:52:01', 2, 0, 3),
(4, 2, 'Storyboard long video explanation', 0, '2020-04-23 11:53:20', 2, 0, 4),
(5, 2, 'Create Short Video/Gif Animations from Video', 0, '2020-04-23 11:53:52', 2, 0, 5),
(8, 4, 'Project Name', 0, '2020-05-11 20:47:05', 1, 0, 11),
(10, 4, 'Account', 0, '2020-05-11 20:47:11', 1, 0, 10),
(12, 4, 'Client Contacts', 0, '2020-05-11 20:47:20', 1, 0, 9),
(14, 4, 'Owner', 0, '2020-05-11 20:47:30', 1, 0, 8),
(16, 4, 'Delivery Date', 0, '2020-05-11 20:47:37', 1, 0, 7),
(18, 4, 'Create Date', 0, '2020-05-11 20:47:42', 1, 0, 6),
(21, 4, 'Projected Sales Date', 0, '2020-05-11 20:47:49', 1, 0, 5),
(22, 4, 'Revenue Potential (Linked to Latest Estimate)', 0, '2020-05-11 20:48:03', 1, 0, 4),
(26, 4, 'ProbabilityStat', 0, '2020-05-11 20:48:50', 1, 0, 3),
(27, 4, 'Status', 0, '2020-05-11 20:49:00', 1, 0, 2),
(29, 4, 'Closed', 0, '2020-05-11 20:49:08', 1, 0, 1),
(31, 44, 'Propagate Domain', 1, '2020-07-17 16:16:29', 1, 1, 6),
(33, 44, 'Create Email Addy: Emil@', 1, '2020-07-17 16:16:48', 1, 1, 5),
(35, 44, 'Declare Ownership', 1, '2020-07-17 16:17:08', 1, 1, 4),
(37, 44, 'Alias Emails', 1, '2020-07-17 16:17:21', 1, 1, 3),
(38, 44, 'Create Email Addy: Christine@', 1, '2020-07-17 16:17:32', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_comments`
--

DROP TABLE IF EXISTS `tbltask_comments`;
CREATE TABLE IF NOT EXISTS `tbltask_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `type` varchar(50) DEFAULT 'task',
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`),
  KEY `taskid` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_followers`
--

DROP TABLE IF EXISTS `tbltask_followers`;
CREATE TABLE IF NOT EXISTS `tbltask_followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltask_followers`
--

INSERT INTO `tbltask_followers` (`id`, `staffid`, `taskid`) VALUES
(1, 2, 4),
(2, 1, 4),
(4, 1, 51),
(5, 6, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxes`
--

DROP TABLE IF EXISTS `tbltaxes`;
CREATE TABLE IF NOT EXISTS `tbltaxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltaxes`
--

INSERT INTO `tbltaxes` (`id`, `name`, `taxrate`) VALUES
(1, 'HST', '13.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblteams`
--

DROP TABLE IF EXISTS `tblteams`;
CREATE TABLE IF NOT EXISTS `tblteams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opportunity_id` int(11) NOT NULL,
  `team_members` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblteams`
--

INSERT INTO `tblteams` (`id`, `opportunity_id`, `team_members`, `datecreated`) VALUES
(1, 1, '1,2,4', '2020-06-30 17:51:42'),
(2, 2, '1,2,4,5,6', '2020-07-02 10:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblteam_password_category`
--

DROP TABLE IF EXISTS `tblteam_password_category`;
CREATE TABLE IF NOT EXISTS `tblteam_password_category` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(150) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `color` varchar(10) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblteam_password_category`
--

INSERT INTO `tblteam_password_category` (`id`, `category_name`, `icon`, `color`, `description`) VALUES
(1, 'Marketing Services', 'fa-500px', '', ''),
(2, 'Graphics', 'fa-image', '', ''),
(3, 'General Business', 'fa-building', '', ''),
(4, 'Email Accounts', 'fa-envelope-o', '', ''),
(5, 'Internal', 'fa-archive', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets`
--

DROP TABLE IF EXISTS `tbltickets`;
CREATE TABLE IF NOT EXISTS `tbltickets` (
  `ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `adminreplying` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT 0,
  `email` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT 0,
  `adminread` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ticketid`),
  KEY `service` (`service`),
  KEY `department` (`department`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `priority` (`priority`),
  KEY `project_id` (`project_id`),
  KEY `contactid` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_pipe_log`
--

DROP TABLE IF EXISTS `tbltickets_pipe_log`;
CREATE TABLE IF NOT EXISTS `tbltickets_pipe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_predefined_replies`
--

DROP TABLE IF EXISTS `tbltickets_predefined_replies`;
CREATE TABLE IF NOT EXISTS `tbltickets_predefined_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_priorities`
--

DROP TABLE IF EXISTS `tbltickets_priorities`;
CREATE TABLE IF NOT EXISTS `tbltickets_priorities` (
  `priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`priorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_priorities`
--

INSERT INTO `tbltickets_priorities` (`priorityid`, `name`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_status`
--

DROP TABLE IF EXISTS `tbltickets_status`;
CREATE TABLE IF NOT EXISTS `tbltickets_status` (
  `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT 0,
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_status`
--

INSERT INTO `tbltickets_status` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
(1, 'Open', 1, '#ff2d42', 1),
(2, 'In progress', 1, '#84c529', 2),
(3, 'Answered', 1, '#0000ff', 3),
(4, 'On Hold', 1, '#c0c0c0', 4),
(5, 'Closed', 1, '#03a9f4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_attachments`
--

DROP TABLE IF EXISTS `tblticket_attachments`;
CREATE TABLE IF NOT EXISTS `tblticket_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_replies`
--

DROP TABLE IF EXISTS `tblticket_replies`;
CREATE TABLE IF NOT EXISTS `tblticket_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `message` text DEFAULT NULL,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltodos`
--

DROP TABLE IF EXISTS `tbltodos`;
CREATE TABLE IF NOT EXISTS `tbltodos` (
  `todoid` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`todoid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltodos`
--

INSERT INTO `tbltodos` (`todoid`, `description`, `staffid`, `dateadded`, `finished`, `datefinished`, `item_order`) VALUES
(1, 'Create call with Christine<br />\r\n', 1, '2020-04-22 20:34:34', 1, '2020-05-29 09:59:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltp_bank_account`
--

DROP TABLE IF EXISTS `tbltp_bank_account`;
CREATE TABLE IF NOT EXISTS `tbltp_bank_account` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `user_name` varchar(80) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `bank_code` varchar(200) DEFAULT NULL,
  `account_holder` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `iban` varchar(200) DEFAULT NULL,
  `notice` text DEFAULT NULL,
  `password` varchar(1500) DEFAULT NULL,
  `enable_log` varchar(5) NOT NULL,
  `mgt_id` int(11) NOT NULL,
  `custom_field` text DEFAULT NULL,
  `datecreator` datetime DEFAULT NULL,
  `relate_to` varchar(50) NOT NULL,
  `relate_id` text DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltp_credit_card`
--

DROP TABLE IF EXISTS `tbltp_credit_card`;
CREATE TABLE IF NOT EXISTS `tbltp_credit_card` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `credit_card_type` varchar(150) DEFAULT NULL,
  `card_number` varchar(150) DEFAULT NULL,
  `card_cvc` varchar(150) DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `notice` text DEFAULT NULL,
  `password` varchar(1500) DEFAULT NULL,
  `enable_log` varchar(5) NOT NULL,
  `mgt_id` int(11) NOT NULL,
  `custom_field` text DEFAULT NULL,
  `datecreator` datetime DEFAULT NULL,
  `relate_to` varchar(50) NOT NULL,
  `relate_id` text DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltp_email`
--

DROP TABLE IF EXISTS `tbltp_email`;
CREATE TABLE IF NOT EXISTS `tbltp_email` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `credit_card_type` varchar(150) DEFAULT NULL,
  `card_number` varchar(150) DEFAULT NULL,
  `card_cvc` varchar(150) DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `notice` text DEFAULT NULL,
  `email_type` varchar(150) DEFAULT NULL,
  `auth_method` varchar(150) DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `smtp_auth_method` varchar(150) DEFAULT NULL,
  `smtp_host` varchar(150) DEFAULT NULL,
  `smtp_port` varchar(150) DEFAULT NULL,
  `smtp_user_name` varchar(150) DEFAULT NULL,
  `smtp_password` varchar(1500) DEFAULT NULL,
  `password` varchar(1500) DEFAULT NULL,
  `enable_log` varchar(5) NOT NULL,
  `mgt_id` int(11) NOT NULL,
  `custom_field` text DEFAULT NULL,
  `datecreator` datetime DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `relate_to` varchar(50) NOT NULL,
  `relate_id` text DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltp_email`
--

INSERT INTO `tbltp_email` (`id`, `name`, `pin`, `credit_card_type`, `card_number`, `card_cvc`, `valid_from`, `valid_to`, `notice`, `email_type`, `auth_method`, `host`, `port`, `smtp_auth_method`, `smtp_host`, `smtp_port`, `smtp_user_name`, `smtp_password`, `password`, `enable_log`, `mgt_id`, `custom_field`, `datecreator`, `user_name`, `relate_to`, `relate_id`, `add_from`) VALUES
(1, 'Reverse Margin Master', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', 'Google', 'Pass', 'gmail.com', '', '', '', '', '', 'UnN9Oczj6zoDkLG7qqrPyA==', 'vJQfYfOiQo6RUn3Cywn4vAvKYPSs44GifRc+iNqEGw8=', 'on', 4, '[]', NULL, 'info@reversemargin.com', '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbltp_logs`
--

DROP TABLE IF EXISTS `tbltp_logs`;
CREATE TABLE IF NOT EXISTS `tbltp_logs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff` int(11) DEFAULT NULL,
  `type` varchar(150) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltp_logs`
--

INSERT INTO `tbltp_logs` (`id`, `staff`, `type`, `time`, `rel_id`, `rel_type`) VALUES
(1, 1, 'see', '2020-09-03 14:05:40', 1, 'email'),
(2, 1, 'see', '2020-09-03 14:06:05', 1, 'email'),
(3, 1, 'see', '2020-09-03 14:06:22', 1, 'email'),
(4, 1, 'see', '2020-09-03 14:06:25', 1, 'email');

-- --------------------------------------------------------

--
-- Table structure for table `tbltp_normal`
--

DROP TABLE IF EXISTS `tbltp_normal`;
CREATE TABLE IF NOT EXISTS `tbltp_normal` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `user_name` varchar(80) DEFAULT NULL,
  `notice` text DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `custom_field` text DEFAULT NULL,
  `enable_log` varchar(5) NOT NULL,
  `mgt_id` int(11) NOT NULL,
  `relate_to` varchar(50) NOT NULL,
  `relate_id` text DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltp_normal`
--

INSERT INTO `tbltp_normal` (`id`, `name`, `url`, `user_name`, `notice`, `password`, `custom_field`, `enable_log`, `mgt_id`, `relate_to`, `relate_id`, `add_from`) VALUES
(1, 'SHORT.IO', 'https://app.short.io/', 'andrew@air-media.ca', '', 'JdSfMZFEqFYOOyJrjiVPhQ==', '[{\"name\":\"Current Domains Added\",\"value\":\" go.dresvoboda.com\"},{\"name\":\"Current Domains Added\",\"value\":\"lght.shortcm.li\"}]', 'on', 1, 'contract', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbltp_server`
--

DROP TABLE IF EXISTS `tbltp_server`;
CREATE TABLE IF NOT EXISTS `tbltp_server` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `notice` text DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `password` varchar(1500) DEFAULT NULL,
  `enable_log` varchar(5) NOT NULL,
  `mgt_id` int(11) NOT NULL,
  `custom_field` text DEFAULT NULL,
  `datecreator` datetime DEFAULT NULL,
  `relate_to` varchar(50) NOT NULL,
  `relate_id` text DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltp_share`
--

DROP TABLE IF EXISTS `tbltp_share`;
CREATE TABLE IF NOT EXISTS `tbltp_share` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `not_in_the_system` varchar(5) DEFAULT NULL,
  `mgt_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `client` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `effective_time` datetime DEFAULT NULL,
  `r` varchar(5) DEFAULT 'off',
  `w` varchar(5) DEFAULT 'off',
  `creator` int(11) DEFAULT NULL,
  `datecreator` datetime DEFAULT NULL,
  `hash` varchar(300) DEFAULT NULL,
  `share_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltp_software_license`
--

DROP TABLE IF EXISTS `tbltp_software_license`;
CREATE TABLE IF NOT EXISTS `tbltp_software_license` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `version` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `license_key` varchar(150) DEFAULT NULL,
  `notice` text DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `password` varchar(1500) DEFAULT NULL,
  `enable_log` varchar(5) NOT NULL,
  `mgt_id` int(11) NOT NULL,
  `custom_field` text DEFAULT NULL,
  `datecreator` datetime DEFAULT NULL,
  `relate_to` varchar(50) NOT NULL,
  `relate_id` text DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltracked_mails`
--

DROP TABLE IF EXISTS `tbltracked_mails`;
CREATE TABLE IF NOT EXISTS `tbltracked_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0,
  `date_opened` datetime DEFAULT NULL,
  `subject` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltracked_mails`
--

INSERT INTO `tbltracked_mails` (`id`, `uid`, `rel_id`, `rel_type`, `date`, `email`, `opened`, `date_opened`, `subject`) VALUES
(1, 'ea046b6ea4bc078e9a40b0225a3c7b3e', 1, 'proposal', '2020-04-20 13:58:01', 'drsvoboda@rogers.com', 0, NULL, 'Proposal With Number PRO-000001 Created'),
(2, 'fb25f31def1a37349a5dad3f7c0186bd', 1, 'estimate', '2020-04-20 14:13:15', 'drsvoboda@rogers.com', 1, '2020-04-20 15:06:17', 'Estimate # EST-200054 created'),
(3, '671fac6411e582ccb7fd3d9ae72b9ffd', 1, 'estimate', '2020-04-20 14:13:16', 'evaparkplacedentalcentre@gmail.com', 1, '2020-04-20 14:13:21', 'Estimate # EST-200054 created'),
(4, 'c70788afcc2956fcd8afe248fade8c62', 1, 'proposal', '2020-04-20 15:41:47', 'drsvoboda@rogers.com', 1, '2020-04-20 15:42:00', 'Proposal With Number PRO-000001 Created'),
(5, '3221fb073f6e9fb435821ab9f9cc7406', 1, 'proposal', '2020-04-20 15:53:12', 'drsvoboda@rogers.com', 1, '2020-04-20 16:17:54', 'New Proposal Comment'),
(8, 'd099ef488b06be3923fc105c102fbbdb', 2, 'proposal', '2020-04-20 16:33:22', 'igfernando@gmail.com', 1, '2020-04-20 16:33:49', 'Proposal With Number PRO-000002 Created'),
(13, '0e59955799ed575287ecc05cea9872d5', 1, 'proposal', '2020-05-07 08:27:04', 'drsvoboda@rogers.com', 0, NULL, 'Proposal With Number PRO-0001 Created'),
(14, 'a1300674eddebdd2f7c197baadddfe41', 1, 'proposal', '2020-05-11 10:49:53', 'drsvoboda@rogers.com', 0, NULL, 'Proposal With Number PRO-0001 Created'),
(15, '39c38ba34afe6bd13831a242f98a6689', 1, 'proposal', '2020-05-13 11:42:49', 'drsvoboda@rogers.com', 1, '2020-05-13 20:44:14', 'New Proposal Comment'),
(16, '188988a98119990cf4e49f57daeeff81', 10, 'invoice', '2020-06-15 13:43:55', 'drsvoboda@rogers.com', 1, '2020-06-15 20:54:50', 'Invoice with number AIR-INV-0078-20 created'),
(17, '02b7b8d534b9b0a51226d570f03f902e', 10, 'invoice', '2020-06-15 13:43:56', 'evaparkplacedentalcentre@gmail.com', 1, '2020-06-16 08:43:34', 'Invoice with number AIR-INV-0078-20 created'),
(18, '480a59423edf8bc4f0eaee578f814aff', 10, 'invoice', '2020-06-15 13:43:56', 'ig.fernan.do@gmail.com', 1, '2020-06-15 14:22:09', 'Invoice with number AIR-INV-0078-20 created'),
(19, 'a712c63e03c281fc114c10e16074f649', 7, 'invoice', '2020-06-15 13:45:45', 'drsvoboda@rogers.com', 1, '2020-06-15 20:53:37', 'Invoice # AIR-INV-0075-20 '),
(20, 'd8c6c4249f8933730ca039fb1b7a7ade', 7, 'invoice', '2020-06-15 13:45:45', 'evaparkplacedentalcentre@gmail.com', 1, '2020-06-16 08:43:28', 'Invoice # AIR-INV-0075-20 '),
(21, 'ac9213888e412bbd00202b281fcf7f90', 12, 'invoice', '2020-08-05 17:44:16', 'drsvoboda@rogers.com', 1, '2020-08-05 17:44:21', 'Invoice with number AIR-INV-0080-20 created'),
(22, 'a00f93b6e9682869cd09d63f3605b8cb', 11, 'invoice', '2020-08-05 17:45:09', 'drsvoboda@rogers.com', 1, '2020-08-05 17:45:14', 'Invoice with number AIR-INV-0079-20 created');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_api`
--

DROP TABLE IF EXISTS `tbluser_api`;
CREATE TABLE IF NOT EXISTS `tbluser_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiration_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser_api`
--

INSERT INTO `tbluser_api` (`id`, `user`, `name`, `password`, `token`, `expiration_date`) VALUES
(1, 'J5-06-PL-22-10-DS-1', 'TEST Integration', '$2a$08$X0RXt.UJvdx73y293W.w8uvfIk.0dDAyTBSQdIgZN74', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiSjUtMDYtUEwtMjItMTAtRFMtMSIsIm5hbWUiOiJURVNUIEludGVncmF0aW9uIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNTg5NDE3MDk3fQ.7eOJqJTYBUuf6bcJu1yXLDDrmbFcBtx_AwUf2I3e8jk', '2020-12-31 20:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_auto_login`
--

DROP TABLE IF EXISTS `tbluser_auto_login`;
CREATE TABLE IF NOT EXISTS `tbluser_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_auto_login`
--

INSERT INTO `tbluser_auto_login` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`, `staff`) VALUES
('28ac690cf1e75993679c0c5062188d7d', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36', '99.234.110.254', '2020-04-23 22:20:25', 0),
('098c5cbb547b3f8c4567efe2abc8e71c', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Mobile/15E148 Safari/604.1', '99.234.110.254', '2020-05-13 12:13:57', 0),
('9e4d6d66f067b1650a5b6c5216257a17', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '99.234.110.254', '2020-05-13 15:24:50', 0),
('48755d8eac9f3bf8c3a75e0ba0167103', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/81.0.4044.124 Mobile/15E148 Safari/604.1', '64.137.156.188', '2020-06-03 22:28:35', 1),
('5c3096b81ad81e4e0f526a1b56f77057', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '99.234.110.254', '2020-06-08 17:19:47', 0),
('b1a169abde232f7e313c4ba4f0af28b7', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', '72.139.197.176', '2020-08-29 15:50:17', 1),
('06835f011effc8e3390b1b990e93dc01', 7, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15', '99.230.148.92', '2020-09-10 19:18:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_meta`
--

DROP TABLE IF EXISTS `tbluser_meta`;
CREATE TABLE IF NOT EXISTS `tbluser_meta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `client_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_meta`
--

INSERT INTO `tbluser_meta` (`umeta_id`, `staff_id`, `client_id`, `contact_id`, `meta_key`, `meta_value`) VALUES
(1, 0, 0, 4, 'consent_key', 'aedd9bd4ee660b5624758677a4e17514-dbac177f3463db6f293a0338ca23c159'),
(2, 0, 0, 1, 'consent_key', 'a3bacebdf1cc1d08983e1bc2fee99792-165b56333e51db19c7c52ede3e1b1d10'),
(3, 0, 0, 3, 'consent_key', '30effc58adfd186fadbced5c6144e4da-cd10dd2ec980194dc5f94c6abb64ed3b'),
(4, 0, 0, 5, 'consent_key', '27a4e383854b6054eab053311674fc09-6faeeaaadc3e3a5e20dc83de370592b8'),
(5, 4, 0, 0, 'recent_searches', '[\"customer\",\"customer\\\\\",\"cus\"]'),
(6, 0, 0, 2, 'consent_key', 'e94e11b1aecfb95be96de0a789287186-3e79b0b7af8d36da3357d4486dd1a628'),
(7, 0, 0, 6, 'consent_key', 'eb25cd4e5f5ee70c43fa9ebb54714ded-0e768c8ae8340f58bd48a44e162154b5'),
(8, 1, 0, 0, 'recent_searches', '[\"doc\"]'),
(9, 2, 0, 0, 'recent_searches', '[\"expense category\",\"expense\"]'),
(10, 1, 0, 0, 'dashboard_widgets_order', 'a:8:{s:6:\"top-12\";a:1:{i:0;s:16:\"widget-top_stats\";}s:13:\"middle-left-6\";a:0:{}s:14:\"middle-right-6\";a:0:{}s:6:\"left-8\";a:6:{i:0;s:23:\"widget-finance_overview\";i:1;s:16:\"widget-user_data\";i:2;s:22:\"widget-upcoming_events\";i:3;s:15:\"widget-calendar\";i:4;s:28:\"widget-weekly_payments_chart\";i:5;s:25:\"widget-contracts_expiring\";}s:7:\"right-4\";a:5:{i:0;s:18:\"widget-leads_chart\";i:1;s:12:\"widget-todos\";i:2;s:21:\"widget-projects_chart\";i:3;s:20:\"widget-tickets_chart\";i:4;s:24:\"widget-projects_activity\";}s:13:\"bottom-left-4\";a:0:{}s:15:\"bottom-middle-4\";a:0:{}s:14:\"bottom-right-4\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `tblvault`
--

DROP TABLE IF EXISTS `tblvault`;
CREATE TABLE IF NOT EXISTS `tblvault` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(191) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `password` text NOT NULL,
  `description` text DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `share_in_projects` tinyint(1) NOT NULL DEFAULT 0,
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblviews_tracking`
--

DROP TABLE IF EXISTS `tblviews_tracking`;
CREATE TABLE IF NOT EXISTS `tblviews_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblviews_tracking`
--

INSERT INTO `tblviews_tracking` (`id`, `rel_id`, `rel_type`, `date`, `view_ip`) VALUES
(1, 1, 'estimate', '2020-04-20 15:11:01', '99.234.110.254'),
(2, 2, 'invoice', '2020-04-20 15:39:32', '99.234.110.254'),
(3, 1, 'proposal', '2020-04-20 15:45:53', '99.234.110.254'),
(4, 1, 'estimate', '2020-04-20 16:22:58', '99.234.110.254'),
(5, 2, 'proposal', '2020-04-20 16:33:58', '74.125.210.50'),
(10, 2, 'invoice', '2020-04-28 16:16:25', '198.84.189.167'),
(11, 1, 'proposal', '2020-05-04 09:48:21', '99.234.110.254'),
(12, 4, 'estimate', '2020-05-09 10:03:18', '64.137.156.188'),
(13, 1, 'proposal', '2020-05-12 22:00:33', '64.137.156.188'),
(14, 1, 'proposal', '2020-05-13 11:36:14', '99.234.110.254'),
(15, 1, 'proposal', '2020-05-13 20:44:19', '99.234.110.254'),
(16, 1, 'proposal', '2020-05-25 09:22:31', '99.234.110.254'),
(17, 5, 'estimate', '2020-06-04 10:07:25', '198.84.189.167'),
(18, 9, 'invoice', '2020-07-06 11:26:21', '64.137.156.188');

-- --------------------------------------------------------

--
-- Table structure for table `tblware_unit_type`
--

DROP TABLE IF EXISTS `tblware_unit_type`;
CREATE TABLE IF NOT EXISTS `tblware_unit_type` (
  `unit_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(100) DEFAULT NULL,
  `unit_name` text DEFAULT NULL,
  `unit_symbol` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL,
  PRIMARY KEY (`unit_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblweb_to_lead`
--

DROP TABLE IF EXISTS `tblweb_to_lead`;
CREATE TABLE IF NOT EXISTS `tblweb_to_lead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT 1,
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext DEFAULT NULL,
  `responsible` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext DEFAULT NULL,
  `recaptcha` int(11) NOT NULL DEFAULT 0,
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT 1,
  `mark_public` int(11) NOT NULL DEFAULT 0,
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblweb_to_lead`
--

INSERT INTO `tblweb_to_lead` (`id`, `form_key`, `lead_source`, `lead_status`, `notify_lead_imported`, `notify_type`, `notify_ids`, `responsible`, `name`, `form_data`, `recaptcha`, `submit_btn_name`, `success_submit_msg`, `language`, `allow_duplicate`, `mark_public`, `track_duplicate_field`, `track_duplicate_field_and`, `create_task_on_duplicate`, `dateadded`) VALUES
(1, 'af5b87422a6db86b5b6df0d94908daf1', 3, 2, 1, 'specific_staff', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}', 2, 'Main Website Leads', '[{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\"},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Got a need for something spectacular? We have you covered. Let\'s start the conversation with a couple really simply questions. What do you need? When do you need it? and, How do we get a hold of you?<br>We can take things from there to get in touch and start discovery! If you want to know more about our process check out our 8 Levels of Awesome Page!\"},{\"type\":\"text\",\"required\":true,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"name\",\"subtype\":\"text\"},{\"type\":\"text\",\"subtype\":\"email\",\"required\":true,\"label\":\"Email Address\",\"placeholder\":\"Email Address\",\"className\":\"form-control\",\"name\":\"email\"},{\"type\":\"text\",\"required\":true,\"label\":\"Phone\",\"placeholder\":\"(555) 555-5555\",\"className\":\"form-control\",\"name\":\"phonenumber\",\"subtype\":\"text\"},{\"type\":\"text\",\"label\":\"Company\",\"className\":\"form-control\",\"name\":\"company\",\"subtype\":\"text\"},{\"type\":\"text\",\"label\":\"City\",\"className\":\"form-control\",\"name\":\"city\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Description\",\"placeholder\":\"You do you need?\",\"className\":\"form-control\",\"name\":\"description\",\"subtype\":\"textarea\"}]', 0, 'Send Away!', 'Congratulations you have connected LGHT Inc! + 5 to Intelligence!', 'english', 0, 0, 'email', 'company', 1, '2020-09-04 11:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_sub_group`
--

DROP TABLE IF EXISTS `tblwh_sub_group`;
CREATE TABLE IF NOT EXISTS `tblwh_sub_group` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sub_group_code` varchar(100) DEFAULT NULL,
  `sub_group_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
