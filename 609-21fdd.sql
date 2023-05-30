-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2023 at 06:44 PM
-- Server version: 5.7.39
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `609-21fdd`
--

-- --------------------------------------------------------

--
-- Table structure for table `subj`
--

CREATE TABLE `subj` (
  `id` int(11) NOT NULL COMMENT 'id предмета',
  `name` varchar(255) NOT NULL COMMENT 'Название предмета'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subj`
--

INSERT INTO `subj` (`id`, `name`) VALUES
(1, 'Математика'),
(2, 'Русский язык'),
(3, 'Информатика'),
(4, 'История'),
(5, 'Обществознание'),
(6, 'Английский язык');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'id репетитора',
  `name` varchar(255) NOT NULL COMMENT 'ФИО репетитора',
  `email` varchar(319) NOT NULL COMMENT 'Почта репетитора',
  `id_pred` int(11) NOT NULL COMMENT 'id Предмета',
  `price_for_hour` smallint(5) UNSIGNED NOT NULL COMMENT 'Цена за 1 час занятия'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `email`, `id_pred`, `price_for_hour`) VALUES
(1, 'Иван Иванович', 'ivanovich@gmail.com', 1, 1000),
(2, 'Екатерина Ивановна', 'ekativanovna@gmail.com', 6, 900),
(3, 'Андрей Борисович', 'borisovich@gmail.com', 5, 2500),
(4, 'Егор Александрович', 'alexandr@gmail.com', 1, 1200),
(5, 'Никита Александрович', 'nikitaalex@gmail.com', 1, 3500),
(6, 'Геннадий Валентинович', 'gennadiyvalen@gmail.com', 1, 3000),
(7, 'Анна Валерьевна', 'annavaler@gmail.com', 1, 1500),
(8, 'Елена Владимировна', 'elenavladinirovna@gmail.com', 6, 300),
(9, 'Виктор Викторович', 'viktorviktorovich@gmail.com', 6, 400),
(10, 'Татьяна Юрьевна', 'tatyanayr@gmail.com', 6, 800),
(11, 'Софья Игоревна', 'sophiaigor@gmail.com', 6, 500),
(12, 'Ирина Дмитриевна', 'irinadmitr@gmail.com', 2, 730),
(13, 'Иван Константинович', 'ivankonst@gmail.com', 6, 950),
(14, 'Надежда Владимировна', 'nadezhdavlad@gmail.com', 2, 1400),
(15, 'Людмила Васильевна', 'ludmilavas@gmail.com', 2, 1300),
(16, 'Ирина Николаевна', 'irinamikola@gmail.com', 2, 1000),
(17, 'Евгения Михайловна', 'evgenijamih@gmail.com', 2, 600),
(18, 'Светлана Владимировна', 'svetlanav@gmail.com', 5, 2500),
(19, 'Дарья Вадимовна', 'dariavad@gmail.com', 5, 500),
(20, 'Илона Левоновна', 'ilonalev@gmail.com', 5, 1100),
(21, 'Ксения Александровна', 'kseniaalex@gmail.com', 5, 1500),
(22, 'Ольга Александровна', 'olgaalex@gmail.com', 3, 1000),
(23, 'Любовь Сергеевна', 'lubovserg@gmail.com', 3, 1300),
(24, 'Зоя Александровна', 'zoyaalex@gmail.com', 3, 1900),
(25, 'Шамиль Равилевич', 'shamilrav@gmail.com', 3, 1500),
(26, 'Юрий Сергеевич', 'yuriyserg@gmail.com', 3, 2000),
(27, 'Роман Камилевич', 'romankam@gmail.com', 4, 600),
(28, 'Евгений Максимович', 'evgeniymaks@gmail.com', 4, 1000),
(29, 'Юлия Александровна', 'yuliyaalex@gmail.com', 4, 500),
(30, 'Кристина Артуровна', 'kristinaart@gmail.com', 4, 1000),
(31, 'Татьяна Леонидовна', 'tatyanaleon@gmail.com', 4, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id ученика',
  `name` varchar(255) NOT NULL COMMENT 'ФИО ученика',
  `email` varchar(319) NOT NULL COMMENT 'Почта ученика'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`) VALUES
(1, 'Иван Иванов', 'ivan2006@gmail.ru');

-- --------------------------------------------------------

--
-- Table structure for table `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id заказа',
  `id_student` int(11) UNSIGNED NOT NULL COMMENT 'id ученика - заказчика',
  `id_teacher` int(11) UNSIGNED NOT NULL COMMENT 'id репетитора',
  `lesson_date` date DEFAULT NULL COMMENT 'Дата занятия, выбранная учеником'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zakaz`
--

INSERT INTO `zakaz` (`id`, `id_student`, `id_teacher`, `lesson_date`) VALUES
(1, 1, 26, '2023-06-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subj`
--
ALTER TABLE `subj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pred` (`id_pred`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_student` (`id_student`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subj`
--
ALTER TABLE `subj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id предмета', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id репетитора', AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id ученика', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id заказа', AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`id_pred`) REFERENCES `subj` (`id`);

--
-- Constraints for table `zakaz`
--
ALTER TABLE `zakaz`
  ADD CONSTRAINT `zakaz_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `zakaz_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
