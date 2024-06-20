-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2023 at 03:58 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acrss_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `id` bigint(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `code`, `fullname`, `contact`, `email`, `address`, `status`, `created_at`, `updated_at`) VALUES
(7, '', 'Suresh', '9876540321', 'suresh@gmail.in', 'RR Nagar,Bangalore-560060', 1, '2023-09-15 16:03:35', '2023-09-15 16:06:38'),
(8, '', 'Ravi', '879064025', 'ravi@gmail.in', 'Mysore road,Bangalore', 2, '2023-09-15 16:08:17', '2023-09-15 16:31:57'),
(10, '', 'Rahul', '9750467890', 'harsi@gmail.in', '#78,RR Nagar,Bangalore-60', 0, '2023-09-23 11:36:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `book_services`
--

CREATE TABLE `book_services` (
  `id` bigint(30) NOT NULL,
  `book_id` bigint(30) NOT NULL,
  `service_id` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_services`
--

INSERT INTO `book_services` (`id`, `book_id`, `service_id`) VALUES
(0, 7, 20),
(0, 7, 20),
(0, 8, 17),
(0, 8, 17),
(0, 10, 20),
(0, 10, 19),
(0, 10, 16);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_list`
--

CREATE TABLE `inquiry_list` (
  `id` bigint(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_list`
--

INSERT INTO `inquiry_list` (`id`, `fullname`, `contact`, `email`, `message`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Rahul', '9876543210', 'rahul@mail.in', 'I need to install new Ac', 1, '2023-09-23 11:27:23', '2023-09-23 11:27:32'),
(5, 'Varma', '90876635562', 'vp@123.in', 'I need to shift Ac to new location', 1, '2023-09-23 11:28:11', '2023-09-23 11:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` bigint(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `name`, `description`, `price`, `image_path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AC Split Type Repair', '&lt;p&gt;These used to be a very common choice for controlling the temperature in a small room. They contain the compressor, condenser, coils and the evaporator all in one single unit. Window air conditioners are designed to fit into the window of a room, so they generally don&amp;rsquo;t need any significant home modifications for installation. Wall units are very similar, except they need a hole made in the room&amp;rsquo;s wall in order for them to fit.&lt;/p&gt;\r\n&lt;p&gt;Window air conditioners generally have a low up front cost. If you are considering cooling down multiple rooms, you may want to consider a split or ducted system, because they tend to be more efficient. One advantage of window air conditioners is that they can be taken with you when you move houses. This makes them suitable for renters, or those who are considering moving in the near future.&lt;/p&gt;\r\n&lt;p&gt;Most window air conditioners work in cycles that involve them turning on to cool down or heat up the room, then switching off once the desired temperature is reached. They click back on once the room starts to heat up or cool down again. They tend to not be very energy efficient.&lt;/p&gt;', 1500.00, 'uploads/services/1.png?v=1682645421', 1, '2023-04-28 09:30:20', '0000-00-00 00:00:00'),
(2, 'AC Window Type Repair', '&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQCA&quot; data-ved=&quot;2ahUKEwjUt72zsayBAxWpTmwGHUtBDHQQo_EKegQIARAI&quot;&gt;You can try cleaning the air filter or replacing the fan motor or blades to fix these issues.&amp;nbsp;You should always contact a repair technician to perform any electrical work.&lt;/div&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQCA&quot; data-ved=&quot;2ahUKEwjUt72zsayBAxWpTmwGHUtBDHQQo_EKegQIARAI&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQCA&quot; data-ved=&quot;2ahUKEwjUt72zsayBAxWpTmwGHUtBDHQQo_EKegQIARAI&quot;&gt;\r\n&lt;ul data-hveid=&quot;CAEQFg&quot; data-ved=&quot;2ahUKEwjt6NO1tKyBAxUOS2wGHZG1DYIQm_YKegQIARAW&quot;&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Poor cooling performance&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Loud noises during operation&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Leaking water&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Inefficient energy consumption&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Compressor failure&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Poor airflow&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 2000.00, 'uploads/services/2.png?v=1682646346', 1, '2023-04-28 09:45:46', '0000-00-00 00:00:00'),
(3, 'Central AC Repair', '&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQCA&quot; data-ved=&quot;2ahUKEwiz8ebXs6yBAxXwSGwGHbtJDAoQo_EKegQIARAI&quot;&gt;Central air conditioners have four main components: the evaporator coil, compressor, condenser coil, and expansion valve.&amp;nbsp;Common reasons why a central air conditioner may not be working properly include:&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;ul data-hveid=&quot;CAEQGA&quot; data-ved=&quot;2ahUKEwiz8ebXs6yBAxXwSGwGHbtJDAoQm_YKegQIARAY&quot;&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;A blocked or clogged condenser coil&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Frozen coils&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;A compressor that is not running&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;A thermostat that is not operating properly&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 5000.00, 'uploads/services/3.png?v=1682646441', 1, '2023-04-28 09:47:21', '0000-00-00 00:00:00'),
(14, 'Routine Service (Window AC)', '&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQCA&quot; data-ved=&quot;2ahUKEwjUt72zsayBAxWpTmwGHUtBDHQQo_EKegQIARAI&quot;&gt;Window air conditioners can last about eight to ten years, but their lifespan may vary depending on their quality and how well they are maintained.&amp;nbsp;Here are some maintenance tips for window air conditioners:&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;ul data-hveid=&quot;CAEQGQ&quot; data-ved=&quot;2ahUKEwjUt72zsayBAxWpTmwGHUtBDHQQm_YKegQIARAZ&quot;&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Clean or replace the air filter every one to three months.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Inspect and clean the coils on the outside of the unit.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Clean the water pan.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Fill in extra spaces.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Store properly.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1750.00, 'uploads\\services\\service window.png', 1, '2023-09-15 14:35:45', '0000-00-00 00:00:00'),
(15, 'Routine Service(Split AC)', '&lt;div class=&quot;s7d4ef&quot;&gt;\r\n&lt;div class=&quot;OZ9ddf GkDqAd&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;RJPOee mNfcNd&quot;&gt;\r\n&lt;div class=&quot;EyBRub jUja0e&quot; data-ve-view=&quot;&quot; data-hveid=&quot;CAEQAg&quot; data-ved=&quot;2ahUKEwjOyL2FsayBAxWk-jgGHWEiDisQ2b4KegQIARAC&quot;&gt;\r\n&lt;div id=&quot;pC4EZc7mBaT14-EP4cS42AI_tts-scoped-element&quot; class=&quot;Pqkn2e Bb1JKe&quot;&gt;\r\n&lt;div class=&quot;jloFI GkDqAd OWyYme&quot;&gt;\r\n&lt;div class=&quot;oO0fve&quot;&gt;\r\n&lt;div data-mac=&quot;&quot;&gt;\r\n&lt;div class=&quot;oO0fve&quot;&gt;\r\n&lt;div class=&quot;UxeQfc&quot;&gt;\r\n&lt;div class=&quot;LT6XE&quot;&gt;\r\n&lt;div class=&quot;RJPOee EIJn2&quot;&gt;\r\n&lt;div class=&quot;f5cPye&quot;&gt;\r\n&lt;div class=&quot;oD6fhb&quot;&gt;\r\n&lt;div class=&quot;WaaZC&quot;&gt;\r\n&lt;div class=&quot;rPeykc PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQCA&quot; data-ved=&quot;2ahUKEwjOyL2FsayBAxWk-jgGHWEiDisQo_EKegQIARAI&quot;&gt;Split AC servicing includes cleaning and inspecting the air conditioner to ensure optimal cooling. The technician will clean the air filter, dust in the vents, and check the coolant pressure. They may also clean the cooling coil with a jet pump and de-clog the condensate drain line with pressurized air. The technician will also inspect the key components of the unit, such as the compressor, fan motor, evaporator unit, condenser unit, and thermostat. If any faults are found, the technician may suggest a repair or replacement.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 1000.00, 'uploads\\services\\split service.png', 1, '2023-09-15 14:59:54', '0000-00-00 00:00:00'),
(16, 'Routine Service (Central AC)', '&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQEg&quot; data-ved=&quot;2ahUKEwiBxI20s6yBAxVHSGwGHV4rCxcQo_EKegQIARAS&quot;&gt;The technician will also:&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;ul data-hveid=&quot;CAEQIQ&quot; data-ved=&quot;2ahUKEwiBxI20s6yBAxVHSGwGHV4rCxcQm_YKegQIARAh&quot;&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Measure the airflow through the evaporator coil&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Check for leaks in ductwork&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Inspect the condensate pump&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Clean the condensate pump of dirt and debris&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Visually inspect the whole HVAC system&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Clean away any dust, dirt, and debris from the system&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;div class=&quot;rPeykc PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQIg&quot; data-ved=&quot;2ahUKEwiBxI20s6yBAxVHSGwGHV4rCxcQo_EKegQIARAi&quot;&gt;Central AC service should be done twice a year, once in the fall and once in the spring.&amp;nbsp;This ensures that the system is clean, that its parts are in good shape, and that it&#039;s operating as optimally as possible.&lt;/div&gt;\r\n&lt;/div&gt;', 2699.00, 'uploads\\services\\central.png', 1, '2023-09-15 15:00:26', '0000-00-00 00:00:00'),
(17, 'Installation(Window AC)', '&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQCA&quot; data-ved=&quot;2ahUKEwiF4KeYsqyBAxU2TGwGHULDD7IQo_EKegQIARAI&quot;&gt;Window air conditioners are relatively easy to install.&amp;nbsp;Here are some steps you can follow:&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;ul data-hveid=&quot;CAEQMw&quot; data-ved=&quot;2ahUKEwiF4KeYsqyBAxU2TGwGHULDD7IQnPYKegQIARAz&quot;&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Find the center of the window.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Open the window.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Attach the side panels.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Insert the AC in the window.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Install L-brackets.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Extend the panels.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Secure the unit.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Plug the AC unit into a nearby outlet and power it on.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Use foam to close any gaps and holes.&amp;nbsp;This will also stop dust and insects from entering the room.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Use a Foam Insulation Tape to get a secure seal from the outside.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 800.00, 'uploads\\services\\window.png', 1, '2023-09-15 15:02:49', '0000-00-00 00:00:00'),
(18, 'Installation(Split AC)', '&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQEg&quot; data-ved=&quot;2ahUKEwjRnqy8sqyBAxXlTWwGHaS_Bo4Qo_EKegQIARAS&quot;&gt;The installation process for a split system includes:&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;ul data-hveid=&quot;CAEQJw&quot; data-ved=&quot;2ahUKEwjRnqy8sqyBAxXlTWwGHaS_Bo4QnPYKegQIARAn&quot;&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Fixing the mounting plate and drilling an outlet hole.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Mounting the indoor unit.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Mounting the outdoor unit.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Connecting the wires.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Connecting the copper pipes.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Securing the two copper pipes from the indoor unit to the outdoor unit with flare nuts.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Connecting the power cable from the indoor unit to the outdoor unit.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Connecting the power supply to a designated outlet.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Using electric tape to keep the refrigerant pipe, control wire, and drainage tubing together.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Lifting the indoor unit to the mount and putting the bundled pipes, wire, and tubing through the hole.&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Securing the indoor unit on the wall mount using the hardware supplied by the manufacturer.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1200.00, 'uploads\\services\\split.png', 1, '2023-09-15 15:03:12', '0000-00-00 00:00:00'),
(19, 'Installation(Central AC)', '&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;div class=&quot;rPeykc uP58nb eUu65e PZPZlf&quot; data-attrid=&quot;SGEParagraphFeedback&quot; data-hveid=&quot;CAEQCA&quot; data-ved=&quot;2ahUKEwjSw4n-sayBAxUzS2wGHUgjDeYQo_EKegQIARAI&quot;&gt;Installing a central air conditioning (AC) unit involves connecting the unit to a home&#039;s duct system.&amp;nbsp;The steps for installing a central AC unit are:&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;WaaZC Zh8Myb&quot;&gt;\r\n&lt;ul data-hveid=&quot;CAEQGQ&quot; data-ved=&quot;2ahUKEwjSw4n-sayBAxUzS2wGHUgjDeYQnPYKegQIARAZ&quot;&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Purchase the unit&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Assess the ductwork&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Install the outdoor unit&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Measure the right length of refrigerant line and drain piping&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Connect the electrical lines&lt;/li&gt;\r\n&lt;li class=&quot;PZPZlf&quot; data-attrid=&quot;SGEListItem&quot;&gt;Connect the thermostat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 2900.00, 'uploads\\services\\central2.png', 1, '2023-09-15 15:03:29', '0000-00-00 00:00:00'),
(20, 'Gas Filling', '&lt;p&gt;If your AC is low on refrigerant, it can be harder to cool the air entering your home.&amp;nbsp;The system can&#039;t adjust and keep the air there for longer, so it sends air out at a less than ideal temperature.&lt;/p&gt;\r\n&lt;p&gt;The gas fillig of all types of AC is available.The price may vary depending on types of Air Conditioner&lt;/p&gt;', 2499.00, 'uploads\\services\\gas.png', 1, '2023-09-15 15:04:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'AC Repair and Services System'),
(6, 'short_name', 'AC SERVICE'),
(11, 'logo', 'uploads/logo.png?v=1694532790'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1682644550'),
(17, 'phone', '456-888-111'),
(18, 'mobile', '9678654846'),
(19, 'email', 'info@acrepairaservice.com'),
(20, 'address', 'Street	Building No. 28/27, Sree Balaji Complex, Near Ayyappa Temple, Subroto Mukerjee Road, T. Dasarahalli, Subroto Mukherjee Rd, 2nd Stage Bangalore-560057');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(9, 'Claire', '', 'Blake', 'cblake', '$2y$10$DFEet3AmXnsVKls912SbHey87bsXauL7nannya2CjtV7m37dNZhNe', 'uploads/avatars/9.png?v=1682495668', NULL, 2, '2023-04-26 15:54:27', '2023-04-26 16:02:36'),
(10, 'K ', 'H ', 'J', 'KJ', '$2y$10$SkEztXHX2HX8C9T5hGFeVOAYvGuUo2HOzT48wOaKiy7EqqVr9hsOK', 'uploads/avatars/10.png?v=1694532878', NULL, 1, '2023-09-12 21:04:38', '2023-09-12 21:04:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_services`
--
ALTER TABLE `book_services`
  ADD KEY `book_id_fk` (`book_id`),
  ADD KEY `service_id_fk` (`service_id`);

--
-- Indexes for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_services`
--
ALTER TABLE `book_services`
  ADD CONSTRAINT `book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `book_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `service_id_fk` FOREIGN KEY (`service_id`) REFERENCES `service_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
