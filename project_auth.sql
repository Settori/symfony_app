-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Lut 2020, 13:33
-- Wersja serwera: 10.4.10-MariaDB
-- Wersja PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `project_auth`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200212113947', '2020-02-12 11:40:26'),
('20200212122822', '2020-02-12 12:28:32'),
('20200212123435', '2020-02-12 12:34:40');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `disabled`) VALUES
(1, 'test@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 0),
(2, 'test2@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 1),
(3, 'test3@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 0),
(4, 'test4@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dkMwanB0ekpVNHBJWWhyVg$8hLkN0T0kofWdIQUBVuJNDj2KGZ/eRmWCjh6vRlDEow', 0),
(5, 'test5@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 0),
(6, 'test6@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 0),
(7, 'test7@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dkMwanB0ekpVNHBJWWhyVg$8hLkN0T0kofWdIQUBVuJNDj2KGZ/eRmWCjh6vRlDEow', 0),
(8, 'test8@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 1),
(9, 'test9@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 0),
(10, 'test10@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 0),
(11, 'test11@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dkMwanB0ekpVNHBJWWhyVg$8hLkN0T0kofWdIQUBVuJNDj2KGZ/eRmWCjh6vRlDEow', 0),
(12, 'test12@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 0),
(13, 'test13@test.pl', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VWRUWFZNaTB1NEJZMjhmNA$Is88PW8H3eoTOpjksq4EdvNDTl+PqajTuOIgSsxQyLI', 0),
(14, 'test14@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dkMwanB0ekpVNHBJWWhyVg$8hLkN0T0kofWdIQUBVuJNDj2KGZ/eRmWCjh6vRlDEow', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
