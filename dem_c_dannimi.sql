-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 24 2024 г., 21:18
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dem`
--

-- --------------------------------------------------------

--
-- Структура таблицы `datacomments`
--

CREATE TABLE `datacomments` (
  `commentID` int(11) NOT NULL,
  `message` varchar(45) NOT NULL,
  `masterID1` int(11) DEFAULT NULL,
  `requestID1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `datacomments`
--

INSERT INTO `datacomments` (`commentID`, `message`, `masterID1`, `requestID1`) VALUES
(1, 'Всё сделаем!', 2, 1),
(2, 'Не переживаейте, починим.', 3, 2),
(3, 'Не переживаейте, починим.', 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `datarequests`
--

CREATE TABLE `datarequests` (
  `requestID` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `computerTechType` varchar(50) NOT NULL,
  `computerTechModel` varchar(50) NOT NULL,
  `problemDescryption` varchar(45) NOT NULL,
  `requestStatus` varchar(45) NOT NULL,
  `completionDate` date DEFAULT NULL,
  `repairParts` varchar(45) DEFAULT NULL,
  `masterID` int(11) DEFAULT NULL,
  `clientID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `datarequests`
--

INSERT INTO `datarequests` (`requestID`, `startDate`, `computerTechType`, `computerTechModel`, `problemDescryption`, `requestStatus`, `completionDate`, `repairParts`, `masterID`, `clientID`) VALUES
(1, '0000-00-00', 'Компьютер', 'RDOR GAMING RAGE H290', 'Выключается после 10 минут работы', 'В процессе ремонта', NULL, '', 2, 7),
(2, '0000-00-00', 'Ноутбук', 'ASUS VivoBook Pro 15 M6500QH-HN034 синий', 'Сильно шумит и греется', 'В процессе ремонта', NULL, '', 3, 8),
(3, '0000-00-00', 'Мышка', 'ARDOR GAMING Phantom PRO', 'Перестало работать колёсико', 'Готова к выдаче', '0000-00-00', '', 3, 9),
(4, '0000-00-00', 'Клавиатура', 'Dark Project KD83A', 'Сломались некоторые клавиши', 'Новая заявка', NULL, '', NULL, 8),
(5, '0000-00-00', 'Ноутбук', 'ASUS ROG Strix G15 G513RW-HQ177 серый', 'Не загружается система', 'Новая заявка', NULL, '', NULL, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `datausers`
--

CREATE TABLE `datausers` (
  `userID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `patronymic` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `datausers`
--

INSERT INTO `datausers` (`userID`, `name`, `surname`, `patronymic`, `phone`, `login`, `password`, `type`) VALUES
(4, 'Гусева', 'Василиса', 'Дмитриевна', '89990563748', 'login4', 'pass4', 'Оператор'),
(5, 'Миронов', 'Даниэль', 'Львович', '89994563847', 'login5', 'pass5', 'Оператор'),
(6, 'Белов', 'Роман', 'Добрынич', '89219567849', 'login6', 'pass6', 'Заказчик'),
(7, 'Кузин', 'Михаил', 'Родионович', '89219567841', 'login7', 'pass7', 'Заказчик'),
(8, 'Ковалева', 'Софья', 'Владимировна', '89219567842', 'login8', 'pass8', 'Заказчик'),
(9, 'Глухова', 'Вероника', 'Владимировна', '89219567843', 'login9', 'pass9', 'Заказчик');

-- --------------------------------------------------------

--
-- Структура таблицы `masteruser`
--

CREATE TABLE `masteruser` (
  `userID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `patronymic` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `masteruser`
--

INSERT INTO `masteruser` (`userID`, `name`, `surname`, `patronymic`, `phone`, `login`, `password`, `type`) VALUES
(1, 'Минаева', 'Алиса', 'Тимофеевна', '89210563128', 'login1', 'pass1', 'Менеджер'),
(2, 'Воробьев', 'Фёдор', 'Алексеевич', '89535078985', 'login2', 'pass2', 'Техник'),
(3, 'Захарова', 'Алёна', 'Андреевна', '89210673849', 'login3', 'pass3', 'Техник'),
(10, 'Князев', 'Арсений', 'Андреевич', '89219567844', 'login10', 'pass10', 'Техник');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `datacomments`
--
ALTER TABLE `datacomments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `masterID_idx` (`masterID1`),
  ADD KEY `requestID_idx` (`requestID1`);

--
-- Индексы таблицы `datarequests`
--
ALTER TABLE `datarequests`
  ADD PRIMARY KEY (`requestID`),
  ADD KEY `masterID_idx` (`masterID`),
  ADD KEY `clientID_idx` (`clientID`);

--
-- Индексы таблицы `datausers`
--
ALTER TABLE `datausers`
  ADD PRIMARY KEY (`userID`);

--
-- Индексы таблицы `masteruser`
--
ALTER TABLE `masteruser`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `datacomments`
--
ALTER TABLE `datacomments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `datarequests`
--
ALTER TABLE `datarequests`
  MODIFY `requestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `datausers`
--
ALTER TABLE `datausers`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `masteruser`
--
ALTER TABLE `masteruser`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `datacomments`
--
ALTER TABLE `datacomments`
  ADD CONSTRAINT `masterID1` FOREIGN KEY (`masterID1`) REFERENCES `masteruser` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `requestID1` FOREIGN KEY (`requestID1`) REFERENCES `datarequests` (`requestID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `datarequests`
--
ALTER TABLE `datarequests`
  ADD CONSTRAINT `clientID` FOREIGN KEY (`clientID`) REFERENCES `datausers` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `masterID` FOREIGN KEY (`masterID`) REFERENCES `masteruser` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
