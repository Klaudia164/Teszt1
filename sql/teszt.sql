-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Okt 14. 13:11
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `teszt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `adminok`
--

CREATE TABLE `adminok` (
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `adminok`
--

INSERT INTO `adminok` (`id`) VALUES
(11),
(15);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hianyzok`
--

CREATE TABLE `hianyzok` (
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ulesrend`
--

CREATE TABLE `ulesrend` (
  `id` int(10) UNSIGNED NOT NULL,
  `nev` varchar(100) DEFAULT NULL,
  `sor` tinyint(3) UNSIGNED NOT NULL,
  `oszlop` tinyint(3) UNSIGNED NOT NULL,
  `jelszo` varchar(32) CHARACTER SET latin1 NOT NULL,
  `felhasznalonev` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `ulesrend`
--

INSERT INTO `ulesrend` (`id`, `nev`, `sor`, `oszlop`, `jelszo`, `felhasznalonev`) VALUES
(1, 'Kulhanek László István', 1, 1, '', ''),
(2, 'Molnár Gergő Máté', 2, 1, '', ''),
(3, 'Bakcsányi Dominik', 2, 2, '', ''),
(4, 'Füstös Lóránt', 2, 3, '', ''),
(5, 'Orosz Zsolt', 2, 4, '', ''),
(6, 'Harsányi László Ferenc', 2, 5, '', ''),
(7, 'Kereszturi Kevin', 3, 1, '', ''),
(8, 'Juhász Levente', 3, 2, '', ''),
(9, 'Szabó László', 3, 3, '', ''),
(10, 'Sütő Dániel', 3, 4, '', ''),
(11, 'Détári Klaudia', 3, 5, '034d46a4902efe10f0889586b31c2ed3', 'Klau'),
(12, 'Fazekas Miklós Adrián', 4, 1, '', ''),
(13, '', 4, 2, '', ''),
(14, 'Gombos János', 4, 3, '', ''),
(15, 'Tanár', 4, 4, '', '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `adminok`
--
ALTER TABLE `adminok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `hianyzok`
--
ALTER TABLE `hianyzok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `ulesrend`
--
ALTER TABLE `ulesrend`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ulesrend`
--
ALTER TABLE `ulesrend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `adminok`
--
ALTER TABLE `adminok`
  ADD CONSTRAINT `ibfk_tanulo_admin` FOREIGN KEY (`id`) REFERENCES `ulesrend` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `hianyzok`
--
ALTER TABLE `hianyzok`
  ADD CONSTRAINT `ibfk_tanulo_id` FOREIGN KEY (`id`) REFERENCES `ulesrend` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
