-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 12:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `authors` varchar(255) NOT NULL,
  `num_of_pages` int(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `isbn`, `authors`, `num_of_pages`, `publisher`, `country`, `release_date`) VALUES
(165, 'Lazy Man couches', '1234567', 'R. kelly, Lil Wayne, Adele', 123, 'Sparrot Publications', 'U.S.A', '0000-00-00'),
(166, 'The Black Struggles', '123456', 'Martin Luther King Jnr.', 456678, 'The Voice', 'United State', '0000-00-00'),
(167, 'China wrestles ghosts', '123456-ch-12', 'Bruce Lee', 188, 'Chai Chun House', 'Arizona, United State', '0000-00-00'),
(169, 'Lazy Man couching', '123456789', 'R. kelly, Lil Wayne, Kizz Daniels', 1234, 'Sparrot Publication', 'U.S.A', '0000-00-00'),
(170, 'Africa got Talents', '123456789-ASN', 'Akinwunmi Isola', 300, 'Aromolaran', 'Gabon', '1975-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('093c8ac0d001a0074ca751ddf5b6c4c708514504', 'testrest', 'users', '2020-07-09 14:19:43', 'app'),
('0f87b59bdc5a6e29431f2fd44b1b1ea8bed42e75', 'testrest', 'users', '2020-07-09 06:40:36', 'app'),
('231b912651f884c96e61fd4f522a6b8078c38f78', 'testrest', 'users', '2020-07-09 12:53:21', 'app'),
('2c16c6d289b9d3664cd92088e573a2adf33e87d8', 'testrest', 'users', '2020-07-09 08:46:51', 'app'),
('3054d0af67a6a691b2cf2a55958169d3cad65702', 'testrest', 'users', '2020-07-09 05:34:48', 'app'),
('3f5b27c685eafa11d077fcb3f05295060dc1d6f4', 'testrest', 'users', '2020-07-09 09:58:43', 'app'),
('509fecc09fe4c99e840e8f9f9d0f4b1c94de9096', 'testrest', 'users', '2020-07-08 07:15:58', 'app'),
('52bb2c7d4dfcfb12ba89a4f4280fd5a8704d439b', 'testrest', 'users', '2020-07-09 07:42:35', 'app'),
('5996ded985efa7db6fd4433f6e108798d0f55166', 'testrest', 'users', '2020-07-09 08:23:39', 'app'),
('5adbbf5069ce3d2803f27ce6c0c6ef6cd9de80c8', 'testrest', 'users', '2020-07-08 09:36:55', 'app'),
('5d1c528a6e995d9344d40b207d5bc6d0f08f9d9c', 'testrest', 'users', '2020-07-09 05:03:06', 'app'),
('620f97cf23e6f8884df0b90867367cb0522eec96', 'testrest', 'users', '2020-07-09 05:57:32', 'app'),
('6dc21a8f07968f71ad4ec7c98f78daaf2ee140d7', 'testrest', 'users', '2020-07-08 09:36:40', 'app'),
('7d11117d2f67101b66355d2b1e04541e752f1d39', 'testrest', 'users', '2020-07-09 15:37:24', 'app'),
('7e7905e939189a552c059976a2d92b890f9832ec', 'testrest', 'users', '2020-07-08 09:36:02', 'app'),
('80e4d0c8b71612c4c77c971d136913c072166e0f', 'testrest', 'users', '2020-07-09 15:01:28', 'app'),
('8359b97c01ce3768929434336ba32fcfce937085', 'testrest', 'users', '2020-07-08 09:36:35', 'app'),
('865e41483e880cfd09fbca6443c25d583590ddb7', 'testrest', 'users', '2020-07-09 13:13:59', 'app'),
('930e5a0ae6b58af587f88d3d43193278c758c5ff', 'testrest', 'users', '2020-07-08 17:34:20', 'app'),
('9568d5f83e85adbc7c1b44b983413f4cb5b5da1c', 'testrest', 'users', '2020-07-08 13:13:50', 'app'),
('9937f9fce64be428627172adcafc1f7485024f92', 'testrest', 'users', '2020-07-08 04:35:40', 'app'),
('9b3322a0bd9706acd5287a7b46894fbd27648304', 'testrest', 'users', '2020-07-09 09:54:23', 'app'),
('bc9189939cf0ed0f809b512c7f8f1865a6003da5', 'testrest', 'users', '2020-07-09 06:50:42', 'app'),
('d6feaf3920d5298d38be0d109f6f979a3c2667a9', 'testrest', 'users', '2020-07-08 15:53:02', 'app'),
('d89cc93bace8867697bf050c3b6415c2657b5767', 'testrest', 'users', '2020-07-09 11:52:44', 'app'),
('dff4074a6a8c56db54f84ffe84e79ab93c32b926', 'testrest', 'users', '2020-07-09 08:43:24', 'app'),
('eb15695a966e68455b71384f7abdc9c5dc22a1f7', 'testrest', 'users', '2020-07-09 06:30:29', 'app'),
('feb4fce52f038211f35df6f1c2ec43e37cf5b476', 'testrest', 'users', '2020-07-09 03:58:09', 'app'),
('ffc03e91480d3feb52214c2e7bfbdbb66cc2f436', 'testrest', 'users', '2020-07-09 10:52:44', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testrest', 'testsecret', NULL, 'password', 'app', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('00c83300e46598f7ad7e5e8ad7f97cb9315fd67d', 'testrest', 'users', '2020-07-23 14:37:24', 'app'),
('046e30517282a2a95b36c24a14839f08021e544e', 'testrest', 'users', '2020-07-23 05:50:42', 'app'),
('0ab0544234dc1e7df1cc72d0b1991e98a9127aa6', 'testrest', 'users', '2020-07-23 05:40:36', 'app'),
('11f0297d0777e3444fd7a642ab050a4443e502c4', 'testrest', 'users', '2020-07-23 07:23:39', 'app'),
('19c2457de2e7a6e6fd2c92a86bb163d1e1a0d1e9', 'testrest', 'users', '2020-07-23 05:30:29', 'app'),
('232287002170202e604dd5eeace989585edd928f', 'testrest', 'users', '2020-07-23 04:57:32', 'app'),
('2d4b7e62f286611508e8b075194f2c86cb2ee2ec', 'testrest', 'users', '2020-07-22 08:36:35', 'app'),
('3b92d4e752146d2db54125b6906209a13fdd8a0e', 'testrest', 'users', '2020-07-22 08:15:58', 'app'),
('42ec0c47d0206b282590eae627d165693afc7b00', 'testrest', 'users', '2020-07-22 08:36:40', 'app'),
('4ce66a38b3c95e1dd42d8193406fde459d94f97f', 'testrest', 'users', '2020-07-22 08:36:02', 'app'),
('537fcc96242953ff210522331a6e0d35b5c66251', 'testrest', 'users', '2020-07-23 11:53:21', 'app'),
('59772840f82d69545bc2de9a77272335b1676642', 'testrest', 'users', '2020-07-23 14:01:28', 'app'),
('61615a361b10e4bdaafd18d7f3d7b7364d8040a6', 'testrest', 'users', '2020-07-23 10:52:44', 'app'),
('6785807a864d19270adf273ade12115a1ffd7dac', 'testrest', 'users', '2020-07-22 14:53:03', 'app'),
('6a8ecc031f6eb1f59452ba60d6df2086dba4bdfb', 'testrest', 'users', '2020-07-23 08:58:43', 'app'),
('7626c800a844e81fa06e60cbe11f987f17aa13a5', 'testrest', 'users', '2020-07-22 12:13:50', 'app'),
('77c0a05bac37201894b57b42d40935bac43f385e', 'testrest', 'users', '2020-07-23 06:42:35', 'app'),
('7c45bbab46e6fc2172b1ae9e26f195fbc0d271c7', 'testrest', 'users', '2020-07-22 16:34:20', 'app'),
('7cbf049cbffaf204ab3c05834fbbb3d986b7e732', 'testrest', 'users', '2020-07-23 01:57:17', 'app'),
('7f29c8d6046a966e69acbe3aa447f9a7f6816630', 'testrest', 'users', '2020-07-23 08:54:23', 'app'),
('b110348e1e446b0bb54a48ce934dbda2d404c5b1', 'testrest', 'users', '2020-07-23 02:47:57', 'app'),
('bd638f6a9c792a9b42daf76a335735e5aaec069a', 'testrest', 'users', '2020-07-23 04:03:06', 'app'),
('ccfa2356c4000210808f591760a6e0580d8f641f', 'testrest', 'users', '2020-07-23 13:19:43', 'app'),
('d388e068c336bb0e9d6097413fd7f3f269c5c519', 'testrest', 'users', '2020-07-23 09:52:44', 'app'),
('e530dadb5a09076f367c4a1860dc45a2bdae1638', 'testrest', 'users', '2020-07-22 08:36:55', 'app'),
('e98f465e09a3cee5f3b8ded0dbcd8924f46c9d7c', 'testrest', 'users', '2020-07-23 07:43:24', 'app'),
('f1529b381f5316e665339351921517f058484066', 'testrest', 'users', '2020-07-22 03:35:40', 'app'),
('f21a85beb2e02746dc250f7fdfc3d312e003fe81', 'testrest', 'users', '2020-07-23 04:34:48', 'app'),
('f7e92666cf73178a3ee3200564a740a1b178040b', 'testrest', 'users', '2020-07-23 12:13:59', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE `oauth_users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`, `email`, `email_verified`, `scope`) VALUES
('users', 'b3b93efe87de8a29d390a5c579d3b2ac1cff29c0', 'rest', 'api', 'users@gmail.com', 1, 'app');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`scope`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
