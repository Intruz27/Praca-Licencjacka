-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Wrz 2021, 19:17
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wypozyczalnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `avaliable` tinyint(1) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `photo_url` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `price` float NOT NULL,
  `fuel` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `fuel_consumption` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `gearbox_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `engine_size` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `manufacture_year` int(11) NOT NULL,
  `number_of_doors` int(11) NOT NULL,
  `liftback` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `cars`
--

INSERT INTO `cars` (`id`, `avaliable`, `name`, `type`, `photo_url`, `price`, `fuel`, `fuel_consumption`, `gearbox_type`, `engine_size`, `manufacture_year`, `number_of_doors`, `liftback`) VALUES
(2, 0, 'AUDI', 'A7', 'cars/audi a7 Sportback 55 TFSI quattro.jpg', 85, 'DIESEL', '9.0', 'MANUAL', '3.0', 2018, 5, 'HATCHBACK'),
(3, 0, 'BMW', 'M8', 'cars/bmw m8 Gran Coupe.jpg', 90, 'BENZYNA', '8.8', 'MANUAL', '2.8', 2019, 5, 'HATCHBACK'),
(4, 0, 'PORSHE', 'CAYENNE', 'cars/Porshe Cayenne 2019.jpg', 95, 'BENZYNA', '10.0', 'AUTOMAT', '3.0', 2017, 5, 'SUV'),
(5, 0, 'VOLVO', 'S60', 'cars/2019-volvo-s60.jpg', 90, 'DIESEL', '7.6', 'AUTOMAT', '2.4', 2019, 5, 'SEDAN'),
(6, 0, 'AUDI', 'Q8', 'cars/Audi q8.jpg', 90, 'BENZYNA', '11.0', 'MANUAL', '3.0', 2020, 5, 'SUV'),
(7, 1, 'BMW', 'X7', 'cars/BMW-X7.jpg', 90, 'DIESEL', '12.0', 'MANUAL', '3.2', 2020, 5, 'SUV'),
(8, 1, 'RENAULT', 'CAPTUR', 'cars/Renault captur intens.jpg', 35, 'BENZYNA', '6.7', 'MANUAL', '1.4', 2017, 5, 'SUV'),
(9, 0, 'MERCEDES', 'GLA 200', 'cars/mercedes-gla-200-amg-2.jpg', 60, 'DIESEL', '7.5', 'AUTOMAT', '2.0', 2019, 5, 'SUV'),
(10, 1, 'TOYOTA', 'RAV4', 'cars/toyota-rav4.jpg', 65, 'BENZYNA', '8.0', 'MANUAL', '2.4', 2018, 5, 'SUV'),
(11, 1, 'FORD', 'MUSTANG F', 'cars/Ford f-150.jpg', 65, 'DIESEL', '14.0', 'AUTOMAT', '4.0', 2018, 3, 'INNE'),
(12, 1, 'FORD', 'MUSTANG 1966', 'cars/Ford mustang 1966 GT 289 V8.jpg', 120, 'BENZYNA', '12.0', 'MANUAL', '3.0', 1966, 3, 'INNE'),
(13, 0, 'MERCEDES', 'AMG e-53', 'cars/mercedes-amg-e-53-coupe-2020.jpg', 50, 'DIESEL', '8.2', 'AUTOMAT', '2.8', 2018, 3, 'HATCHBACK'),
(14, 1, 'PORSHE', '911', 'cars/Porshe 911 Turbo S.jpg', 110, 'BENZYNA', '13.0', 'MANUAL', '3.2', 2017, 3, 'INNE'),
(15, 1, 'RENAULT', 'CLIO', 'cars/Renault Clio 2019.jpg', 30, 'BENZYNA', '7.2', 'MANUAL', '1.8', 2018, 5, 'HATCHBACK'),
(16, 1, 'TOYOTA', 'HARRIER', 'cars/Toyota Harrier.jpg', 55, 'DIESEL', '8.7', 'AUTOMAT', '2.4', 2019, 5, 'SUV'),
(17, 1, 'VOLVO', 'xc60', 'cars/Volvo xc60.jpg', 70, 'DIESEL', '9.2.0', 'MANUAL', '3.0', 2019, 5, 'SUV'),
(18, 1, 'RENAULT', 'ARKANA', 'cars/Renault-Arkana.jpg', 45, 'BENZYNA', '6.0', 'MANUAL', '1.6', 2016, 5, 'SUV'),
(19, 0, 'AUDI', 'A4', 'cars/audi_a4_sedan.jpg', 75, 'BENZYNA', '7.3', 'AUTOMAT', '2.2', 2016, 5, 'SEDAN'),
(20, 1, 'FIAT', 'TIPO', 'cars/fiat_tipo.jpg', 40, 'DIESEL', '6.3', 'MANUAL', '1.4', 2017, 5, 'KOMBI'),
(21, 1, 'FORD', 'GRAND', 'cars/ford_grand_c-max.jpg', 55, 'BENZYNA', '8.4.0', 'MANUAL', '2.6', 2018, 5, 'KOMBI'),
(22, 1, 'HYUNDAI', 'i40', 'cars/hyundai_i40_sedan.jpg', 60, 'DIESEL', '7.1', 'MANUAL', '2.0', 2019, 5, 'SEDAN'),
(23, 1, 'MERCEDES', 'c200', 'cars/mercedes_c200_sedan.jpg', 85, 'BENZYNA', '9.3', 'AUTOMAT', '2.8', 2018, 5, 'HATCHBACK'),
(24, 1, 'KIA', 'CEED', 'cars/kia_ceed_5.jpg', 65, 'DIESEL', '6.6', 'AUTOMAT', '2.4', 2019, 3, 'HATCHBACK'),
(25, 1, 'OPEL', 'CORSA', 'cars/opel_corsa_e.jpg', 60, 'BENZYNA', '7.0', 'MANUAL', '2.0', 2019, 5, 'HATCHBACK'),
(26, 1, 'BMW', '318', 'cars/bmw_318D_sedan.jpg', 90, 'DIESEL', '10.0', 'MANUAL', '3.2', 2020, 5, 'SEDAN'),
(27, 1, 'JAGUAR', 'XJ', 'cars/JAGUAR XJ.jpg', 120, 'BENZYNA', '10,0', 'AUTOMAT', '3.3', 2018, 5, 'LIMUZYNA'),
(28, 1, 'KIA', 'K9', 'cars/KIA K9.jpg', 130, 'BENZYNA', '9.8', 'AUTOMAT', '3.3', 2019, 5, 'LIMUZYNA'),
(29, 1, 'LEXUS', 'LC500', 'cars/lexus lc500.jpg', 70, 'BENZYNA', '7.0', 'MANUAL', '2.6', 2015, 3, 'COUPE'),
(30, 0, 'CHEVROLET', 'CAMARO', 'cars/chevrolet camaro.jpg', 85, 'BENZYNA', '9.8', 'AUTOMAT', '3.3', 2015, 3, 'COUPE'),
(31, 0, 'AUDI', 'TT', 'cars/audi tt.jpg', 65, 'DIESEL', '8.4', 'MANUAL', '2.0', 2015, 3, 'KABRIOLET'),
(32, 1, 'BMW', 'Z4', 'cars/bmw z4.jpg', 70, 'BENZYNA', '7.9', 'AUTOMAT', '2.2', 2018, 4, 'KABRIOLET');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `surname` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `clients`
--

INSERT INTO `clients` (`id`, `name`, `surname`, `phone_number`, `email`) VALUES
(5, 'aaaaaa', 'vvvvv', '123123123', 'asdasdads@wp.pl'),
(6, 'sasdasd', 'sdasd', '345345345', 'asdasdads@wp.pl'),
(7, 'Jarosław', 'Grzęda', '123123123', 'jarek-grzeda@wp.pl'),
(8, 'asdasd', 'asdasd', '123123123', 'asdasdasd@wp.pl'),
(9, 'Olga', 'Nowak', '509462446', 'oldzix@onet.pl'),
(10, 'Jarosław', 'Grzęda', '123123123', 'jarekGrzeda@wp.pl'),
(11, 'Test', 'Test', '123123123', 'Test123@test.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `from_date` timestamp NULL DEFAULT NULL,
  `to_date` timestamp NULL DEFAULT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `reservations`
--

INSERT INTO `reservations` (`id`, `client_id`, `car_id`, `from_date`, `to_date`, `cost`) VALUES
(5, 5, 31, '2021-08-26 21:32:00', '2021-08-26 21:32:00', 0),
(6, 6, 4, '2021-08-26 21:32:00', '2021-08-28 21:32:00', 4560),
(7, 7, 9, '2021-08-26 16:53:00', '2021-08-27 16:54:00', 1440),
(8, 8, 6, '2021-08-26 16:02:00', '2021-08-28 16:02:00', 4320),
(9, 9, 30, '2021-09-15 18:21:00', '2021-10-02 18:21:00', 34680),
(10, 10, 19, '2021-08-26 18:53:00', '2021-08-28 18:53:00', 3600),
(11, 11, 3, '2021-08-26 20:15:00', '2021-08-28 20:15:00', 4320);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `password` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'Admin', '7e77279cb4b3e9ce20b50e853e466d5af7cd63faddca227c8ef7b6d5aaece35f340c1f35e9b468bebe73c29da1057bafa2790a5ec05176f3fb07cd3d9a43cb24');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
