-- phpMyAdmin SQL Dump
-- Generation Time: Mar 12, 2024 at 20:58 PM
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `users` (`username`, `password`, `role`) VALUES
('Rob', '$2y$10$Ds3Nx4rkKXqQQh5S0rjmjOztt8YSIoF6/oBlC28LAHl7Cs.Tyr2D2', ''),
('Sofie', '$2y$10$syv35TsxHBcDG303DGlgg.8nXYqhXbhc3IK7DF6wG/D8gu.6akfZ6', '');

--

--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

