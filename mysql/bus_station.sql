-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 25 2017 г., 02:11
-- Версия сервера: 5.6.13
-- Версия PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `bus_station`
--
CREATE DATABASE IF NOT EXISTS `bus_station` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bus_station`;

-- --------------------------------------------------------

--
-- Структура таблицы `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `id_auto` decimal(4,0) NOT NULL,
  `mark1` char(30) NOT NULL,
  `yearmaking` decimal(4,0) NOT NULL,
  `dateallrepair` date NOT NULL,
  `vin` char(17) NOT NULL,
  `gonumber` char(12) NOT NULL,
  `numberofplace` decimal(2,0) NOT NULL,
  PRIMARY KEY (`id_auto`),
  UNIQUE KEY `gonumbke` (`gonumber`),
  UNIQUE KEY `vinkey` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bus`
--

INSERT INTO `bus` (`id_auto`, `mark1`, `yearmaking`, `dateallrepair`, `vin`, `gonumber`, `numberofplace`) VALUES
('1', 'Setra ComfortClass S 415 GT', '2010', '2014-07-01', 'ZFA18800004473122', 'A000AA70RUS', '51'),
('2', 'Setra ComfortClass S 515 HD', '2013', '2014-07-09', 'ZFA18800004473112', 'A001AA70RUS', '51'),
('3', 'Setra ComfortClass S 417 GT-HD', '2013', '2014-10-01', 'ZFA28800004473122', 'A002AA70RUS', '59'),
('4', 'Setra ComfortClass S 416 GT-HD', '2012', '2014-06-29', 'ZFA18804004473122', 'G003AA70RUS', '55'),
('5', 'Setra ComfortClass S 416 GT-HD', '2011', '2014-07-25', 'ZFA18855004473122', 'G456RA70RUS', '55'),
('6', 'Setra ComfortClass S 415 GT-HD', '2010', '2014-07-25', 'ZFA18858904473122', 'T040RT70RUS', '51'),
('7', 'Setra ComfortClass S 516 HD-2', '2011', '2014-07-02', 'ZFA18858450473122', 'C270KA70RUS', '55'),
('8', 'Setra TopClass S 415 HD', '2013', '2014-08-08', 'ZFA19958450473122', 'H000HA70RUS', '49'),
('9', 'Setra ComfortClass S 517 HD', '2011', '2014-09-23', 'ZFA19989350473122', 'V290GA70RUS', '59'),
('10', 'Mercedes-Benz Intouro', '2012', '2014-09-09', 'ZFA19989345473122', 'F450AA70RUS', '55'),
('11', 'Higer V9 KLQ6977', '2013', '2014-10-10', 'ZFA19989345483122', 'J479AT70RUS', '45'),
('12', 'Higer V91 KLQ6119', '2013', '2014-10-12', 'ZFA19984473483122', 'A089GH70RUS', '49'),
('13', 'Higer V92 KLQ6129', '2013', '2014-09-19', 'FFA19984473483122', 'A065DA70RUS', '51'),
('14', 'Higer V90 KLQ6109', '2012', '2014-09-27', 'FGA19984473483122', 'A123AH70RUS', '49'),
('15', 'Troliga Fenix CNG', '2014', '2014-06-19', 'FTA19984427483122', 'A620JA70RUS', '51'),
('16', 'Otokar Vectio T 39', '2014', '2014-06-17', 'FJA19989438552271', 'A425AA70RUS', '39'),
('17', 'Otokar Vectio T 34', '2011', '2014-06-14', 'RTA19984427479122', 'A082RJ70RUS', '34'),
('18', ' King Long XMQ6130Y', '2013', '2014-06-23', 'FJA19984427479132', 'A044TA70RUS', '59'),
('19', 'King Long XMQ6140Y', '2013', '2014-08-13', 'FYA19984429479132', 'A320UI70RUS', '59'),
('20', 'ГолАЗ-ЛиАЗ-5256', '2012', '2014-09-11', 'ZOG19789429479132', 'A946LA70RUS', '45');

-- --------------------------------------------------------

--
-- Структура таблицы `carrier`
--

CREATE TABLE IF NOT EXISTS `carrier` (
  `id_auto` decimal(4,0) NOT NULL,
  `namecompany` char(40) NOT NULL,
  `adress` char(60) NOT NULL,
  `phonenumber` decimal(11,0) NOT NULL,
  `typecompany` char(40) NOT NULL,
  PRIMARY KEY (`id_auto`),
  KEY `id_autow` (`id_auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `carrier`
--

INSERT INTO `carrier` (`id_auto`, `namecompany`, `adress`, `phonenumber`, `typecompany`) VALUES
('1', 'Улитка', 'Хоббичья нора', '89994447777', 'Перевозчик'),
('2', 'Ослик', 'Самая высокая гора', '88884447777', 'Перевозчик');

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id_client` decimal(4,0) NOT NULL,
  `firstname` char(25) NOT NULL,
  `lastname` char(25) NOT NULL,
  `patronym` char(25) NOT NULL,
  `numberpassp` char(20) NOT NULL,
  PRIMARY KEY (`id_client`),
  KEY `id_client` (`id_client`),
  KEY `id_client_2` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id_client` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` char(50) NOT NULL,
  `lastname` char(50) NOT NULL,
  `patronym` char(50) NOT NULL,
  `numberpassp` char(50) NOT NULL,
  `phonenumber` int(20) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id_client`, `firstname`, `lastname`, `patronym`, `numberpassp`, `phonenumber`) VALUES
(4, 'Некто', 'Некий', 'Нектович', '197161562', 55544283),
(5, 'Кондратий', 'Набалкин', 'Егорович', '14785236910', 2147483647),
(6, 'Вадим', 'Апевало', 'Захарович', '14778236910', 2147483647),
(7, 'Владимир', 'Зухин', 'Ерофеевич', '85236974145', 2147483647),
(8, 'Измаил', 'Дёшин', 'Зиновиевич', '25896378915', 2147483647),
(9, 'Владимир', 'Яковкин', 'Евлампиевич', '78945612368', 2147483647),
(10, 'Сергей', 'Эллинский', 'Миронович', '78963215973', 2147483647),
(11, 'Трофим', 'Осокин', 'Прохорович', '74125878941', 2147483647),
(12, 'Кто-то', 'Некий', 'Ктотович', '14785236932', 2147483647);

-- --------------------------------------------------------

--
-- Структура таблицы `dispatcher`
--

CREATE TABLE IF NOT EXISTS `dispatcher` (
  `id_disp` decimal(4,0) NOT NULL,
  `firstname` char(25) NOT NULL,
  `lastname` char(25) NOT NULL,
  `patronym` char(25) NOT NULL,
  `phonenumber` char(11) NOT NULL,
  PRIMARY KEY (`id_disp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dispatcher`
--

INSERT INTO `dispatcher` (`id_disp`, `firstname`, `lastname`, `patronym`, `phonenumber`) VALUES
('1', 'Тимур', 'Язин', 'Елизарович', '89994441111'),
('2', 'Лаврентий', 'Швечиков', 'Родионович', '89994445555'),
('3', 'Архип', 'Кузьминых', 'Прохорович', '89004785691'),
('4', 'Рюрик', 'Кирьянов', 'Венедиктович', '88884444589');

-- --------------------------------------------------------

--
-- Структура таблицы `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `id_driver` decimal(4,0) NOT NULL,
  `firstname` char(25) NOT NULL,
  `lastname` char(25) NOT NULL,
  `patronym` char(25) NOT NULL,
  `experience` decimal(2,0) NOT NULL,
  `category` char(1) NOT NULL,
  `phonenumber` decimal(11,0) NOT NULL,
  `dateofborn` date NOT NULL,
  PRIMARY KEY (`id_driver`),
  UNIQUE KEY `fio` (`firstname`,`lastname`,`patronym`),
  KEY `exp` (`experience`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `driver`
--

INSERT INTO `driver` (`id_driver`, `firstname`, `lastname`, `patronym`, `experience`, `category`, `phonenumber`, `dateofborn`) VALUES
('1', 'Борис', 'Калинин', 'Глебович', '10', 'D', '80000000001', '1980-05-10'),
('2', 'Александр', 'Белов', 'Сидорович', '7', 'D', '80000000002', '1971-01-01'),
('3', 'Андрей', 'Комаров', 'Бориславич', '17', 'D', '80000000003', '1972-01-01'),
('4', 'Бенедикт', 'Антонов', 'Евсеевич', '10', 'D', '80000000004', '1980-01-01'),
('5', 'Виталий', 'Мухин', 'Трифонович', '10', 'D', '80000000005', '1981-01-10'),
('6', 'Георгий', 'Орлов', 'Устинович', '20', 'D', '80000000006', '1982-01-01'),
('7', 'Дмитрий', 'Чернов', 'Еремеевич', '5', 'D', '80000000007', '1981-10-10'),
('8', 'Егор', 'Панфилов', 'Федотович', '8', 'D', '80000000008', '1981-10-10'),
('9', 'Жерар', 'Федотов', 'Викторович', '10', 'D', '80000000009', '1982-10-10'),
('10', 'Иосиф', 'Пахомов', 'Эдуардович', '9', 'D', '80000000010', '1979-10-10'),
('11', 'Игорь', 'Гусев', 'Захарьевич', '8', 'D', '80000000111', '1975-10-10'),
('12', 'Иван', 'Иванов', 'Иванович', '10', 'D', '80000000012', '1976-05-04'),
('13', 'Захар', 'Большаков', 'Фролович', '15', 'D', '80000000013', '1972-01-01'),
('14', 'Илья', 'Чернов', 'Изотович', '7', 'D', '80000000014', '1973-10-10'),
('15', 'Кирилл', 'Воронцов', 'Якубович', '7', 'D', '80000000015', '1985-05-07'),
('16', 'Сергей', 'Казаков', 'Петрович', '5', 'D', '80000000016', '1986-05-07'),
('17', 'Лазарь', 'Мельников', 'Артурович', '9', 'D', '80000000017', '1975-02-06'),
('18', 'Лаврентий', 'Григорьев', 'Глебович', '9', 'D', '80000000018', '1975-09-07'),
('19', 'Каин', 'Кайафас', 'Комиссарович', '7', 'D', '80000000019', '1980-01-01'),
('20', 'Отто', 'Блинов', 'Ильич', '6', 'D', '80000000020', '1985-10-07');

-- --------------------------------------------------------

--
-- Структура таблицы `insuranc`
--

CREATE TABLE IF NOT EXISTS `insuranc` (
  `id_insurcompany` decimal(4,0) NOT NULL,
  `namecompany` char(40) NOT NULL,
  `adress` char(40) NOT NULL,
  `phonenumber` decimal(11,0) NOT NULL,
  `typecompany` char(40) NOT NULL,
  PRIMARY KEY (`id_insurcompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `insuranc`
--

INSERT INTO `insuranc` (`id_insurcompany`, `namecompany`, `adress`, `phonenumber`, `typecompany`) VALUES
('1', 'Белка', 'Большая Береза, ветка 4', '78915200000', 'Страхование жизни'),
('2', 'Кошка', 'Большая Береза, ветка 2', '78920200000', 'Страхование имущества');

-- --------------------------------------------------------

--
-- Структура таблицы `recall`
--

CREATE TABLE IF NOT EXISTS `recall` (
  `id_recall` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id_recall`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `recall`
--

INSERT INTO `recall` (`id_recall`, `name`, `text`) VALUES
(1, 'абракадабра', 'тест');

-- --------------------------------------------------------

--
-- Структура таблицы `route`
--

CREATE TABLE IF NOT EXISTS `route` (
  `id_route` decimal(4,0) NOT NULL,
  `numroute` decimal(4,0) NOT NULL,
  `destination` char(30) NOT NULL,
  `timeturnout` char(5) NOT NULL,
  `timeroad` int(11) NOT NULL,
  `id_auto` decimal(4,0) NOT NULL,
  PRIMARY KEY (`id_route`),
  KEY `pridauto` (`id_auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `route`
--

INSERT INTO `route` (`id_route`, `numroute`, `destination`, `timeturnout`, `timeroad`, `id_auto`) VALUES
('1', '599', 'Арнор', '12:55', 2, '20'),
('2', '156', 'Приречье', '11:00', 5, '19'),
('3', '624', 'Артедайн', '08:30', 6, '18'),
('4', '515', 'Эриадор', '07:10', 6, '17'),
('5', '522', 'Бри', '14:00', 5, '16'),
('6', '741', 'Мория', '11:20', 9, '15'),
('7', '641', 'Изенгард', '20:10', 11, '14'),
('8', '647', 'Истфолд', '20:00', 14, '13'),
('9', '141', 'Троллистое плато', '10:30', 8, '12'),
('10', '506', 'Ривенделл', '18:35', 8, '11'),
('11', '632', 'Бри', '11:05', 6, '10'),
('12', '784', 'Эребор', '18:45', 10, '9'),
('13', '600', 'Замок Трандуила', '07:30', 9, '8'),
('14', '512', 'Келембел', '07:45', 10, '7'),
('15', '537', 'Ламедон', '08:25', 11, '6'),
('16', '645', 'Пеларгир', '20:05', 12, '10'),
('17', '701', 'Черные Врата', '21:50', 10, '15'),
('18', '675', 'Кирит Унгол', '10:00', 12, '16'),
('19', '571', 'Барад-Дур', '07:35', 14, '19'),
('20', '509', 'Ородруин', '16:40', 14, '17');

-- --------------------------------------------------------

--
-- Структура таблицы `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id_ticket` decimal(4,0) NOT NULL,
  `id_trader` decimal(4,0) NOT NULL,
  `id_route` decimal(2,0) NOT NULL,
  `id_turnout` decimal(4,0) NOT NULL,
  `id_client` decimal(4,0) NOT NULL,
  `priceticket` decimal(15,0) NOT NULL,
  PRIMARY KEY (`id_client`,`id_ticket`,`id_turnout`),
  KEY `id_client` (`id_client`),
  KEY `id_route` (`id_route`),
  KEY `id_trader` (`id_trader`),
  KEY `id_turnout` (`id_turnout`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `trader`
--

CREATE TABLE IF NOT EXISTS `trader` (
  `id_trader` decimal(4,0) NOT NULL,
  `firstname` char(25) NOT NULL,
  `lastname` char(25) NOT NULL,
  `patronym` char(25) NOT NULL,
  `phonenumber` decimal(11,0) NOT NULL,
  PRIMARY KEY (`id_trader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `trader`
--

INSERT INTO `trader` (`id_trader`, `firstname`, `lastname`, `patronym`, `phonenumber`) VALUES
('2', 'Джим', 'Рейнор', '', '89234045774'),
('10', 'Артур', 'Пирожков', 'Генадьевич', '89234404672');

-- --------------------------------------------------------

--
-- Структура таблицы `turnout`
--

CREATE TABLE IF NOT EXISTS `turnout` (
  `id_turnout` decimal(4,0) NOT NULL,
  `id_route` decimal(4,0) NOT NULL,
  `dateturnout` datetime NOT NULL,
  `factdateturnout` datetime NOT NULL,
  `numpassenger` decimal(2,0) NOT NULL,
  `id_driver` decimal(4,0) NOT NULL,
  `id_disp` decimal(4,0) NOT NULL,
  PRIMARY KEY (`id_turnout`),
  KEY `id_dips` (`id_disp`),
  KEY `priddriver` (`id_driver`),
  KEY `pridroute` (`id_route`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `login` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`login`, `password`, `name`) VALUES
('kek', '4cfdc2e157eefe6facb983b1d557b3a1', 'абракадабра'),
('test', '098f6bcd4621d373cade4e832627b4f6', 'тест');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `carrier`
--
ALTER TABLE `carrier`
  ADD CONSTRAINT `carrierid_autow` FOREIGN KEY (`id_auto`) REFERENCES `bus` (`id_auto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `routepridauto` FOREIGN KEY (`id_auto`) REFERENCES `bus` (`id_auto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticketid_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticketid_route` FOREIGN KEY (`id_route`) REFERENCES `route` (`id_route`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticketid_trader` FOREIGN KEY (`id_trader`) REFERENCES `trader` (`id_trader`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticketid_turnout` FOREIGN KEY (`id_turnout`) REFERENCES `turnout` (`id_turnout`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `turnout`
--
ALTER TABLE `turnout`
  ADD CONSTRAINT `turnoutid_dips` FOREIGN KEY (`id_disp`) REFERENCES `dispatcher` (`id_disp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `turnoutpriddriver` FOREIGN KEY (`id_driver`) REFERENCES `driver` (`id_driver`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `turnoutpridroute` FOREIGN KEY (`id_route`) REFERENCES `route` (`id_route`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
