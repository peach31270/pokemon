-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 10 mars 2024 à 16:20
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokemon`
--

-- --------------------------------------------------------

--
-- Structure de la table `evolutionpokemon`
--

DROP TABLE IF EXISTS `evolutionpokemon`;
CREATE TABLE IF NOT EXISTS `evolutionpokemon` (
  `idPokemon` int NOT NULL,
  `idEvolution` int NOT NULL,
  KEY `fk_evolutionPokemon_idPokemon` (`idPokemon`),
  KEY `fk_evolutionPokemon_idEvolution` (`idEvolution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `evolutionpokemon`
--

INSERT INTO `evolutionpokemon` (`idPokemon`, `idEvolution`) VALUES
(1, 2),
(2, 3),
(4, 5),
(5, 6),
(7, 8),
(8, 9),
(10, 11),
(11, 12),
(13, 14),
(14, 15),
(16, 17),
(17, 18),
(19, 20),
(21, 22),
(23, 24),
(25, 26),
(27, 28),
(29, 30),
(30, 31),
(32, 33),
(33, 34),
(25, 36),
(37, 38),
(39, 40),
(41, 42),
(43, 44),
(44, 45),
(46, 47),
(48, 49),
(50, 51),
(52, 53),
(54, 55),
(56, 57),
(58, 59),
(60, 61),
(61, 62),
(63, 64),
(64, 65),
(66, 67),
(67, 68),
(69, 70),
(70, 71),
(72, 73),
(74, 75),
(75, 76),
(77, 78),
(79, 80),
(81, 82),
(84, 85),
(86, 87),
(88, 89),
(90, 91),
(92, 93),
(93, 94),
(96, 97),
(98, 99),
(100, 101),
(102, 103),
(104, 105),
(109, 110),
(111, 112),
(116, 117),
(118, 119),
(120, 121),
(129, 130),
(133, 134),
(133, 135),
(133, 136),
(138, 139),
(140, 141),
(147, 148),
(148, 149);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `IdPokemon` int NOT NULL AUTO_INCREMENT,
  `NomPokemon` varchar(50) NOT NULL,
  `urlPhoto` varchar(150) NOT NULL,
  `PV` int NOT NULL,
  `Attaque` int NOT NULL,
  `Defense` int NOT NULL,
  `Vitesse` int NOT NULL,
  `Special` int NOT NULL,
  `IdTypePokemon` int NOT NULL,
  `IdSecondTypePokemon` int DEFAULT NULL,
  PRIMARY KEY (`IdPokemon`),
  KEY `Id_TypePokémon` (`IdTypePokemon`),
  KEY `Id_SecondTypePokémon` (`IdSecondTypePokemon`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`IdPokemon`, `NomPokemon`, `urlPhoto`, `PV`, `Attaque`, `Defense`, `Vitesse`, `Special`, `IdTypePokemon`, `IdSecondTypePokemon`) VALUES
(1, 'Bulbizarre', 'https://www.pokepedia.fr/images/d/db/Miniature_0001_EV.png', 45, 49, 49, 45, 65, 1, 2),
(2, 'Herbizarre', 'https://www.pokepedia.fr/images/6/61/Miniature_0002_EV.png', 60, 62, 63, 60, 80, 1, 2),
(3, 'Florizarre', 'https://www.pokepedia.fr/images/2/21/Miniature_0003_EV.png', 80, 82, 83, 80, 100, 1, 2),
(4, 'Salamèche', 'https://www.pokepedia.fr/images/c/c1/Miniature_0004_EV.png', 39, 52, 43, 65, 50, 5, NULL),
(5, 'Reptincel', 'https://www.pokepedia.fr/images/2/24/Miniature_0005_EV.png', 58, 64, 58, 80, 65, 5, NULL),
(6, 'Dracaufeu', 'https://www.pokepedia.fr/images/4/42/Miniature_0006_EV.png', 78, 84, 78, 100, 85, 5, 15),
(7, 'Carapuce', 'https://www.pokepedia.fr/images/3/3a/Miniature_0007_EV.png', 44, 48, 65, 43, 50, 3, NULL),
(8, 'Carabaffe', 'https://www.pokepedia.fr/images/3/3f/Miniature_0008_EV.png', 59, 63, 80, 58, 65, 3, NULL),
(9, 'Tortank', 'https://www.pokepedia.fr/images/c/c2/Miniature_0009_EV.png', 79, 83, 100, 78, 85, 3, NULL),
(10, 'Chenipan', 'https://www.pokepedia.fr/images/a/a3/Miniature_0010_DEPS.png', 45, 30, 35, 45, 20, 6, NULL),
(11, 'Chrysacier', 'https://www.pokepedia.fr/images/2/29/Miniature_0011_DEPS.png', 50, 20, 55, 30, 25, 6, NULL),
(12, 'Papilusion', 'https://www.pokepedia.fr/images/c/c0/Miniature_0012_DEPS.png', 60, 45, 50, 70, 80, 6, 15),
(13, 'Aspicot', 'https://www.pokepedia.fr/images/e/ea/Miniature_0013_DEPS.png', 40, 35, 30, 50, 20, 6, 2),
(14, 'Coconfort', 'https://www.pokepedia.fr/images/2/29/Miniature_0014_DEPS.png', 45, 25, 50, 35, 25, 6, 2),
(15, 'Dardargnan', 'https://www.pokepedia.fr/images/d/d9/Miniature_0015_DEPS.png', 65, 80, 40, 75, 45, 6, 2),
(16, 'Roucool', 'https://www.pokepedia.fr/images/c/c2/Miniature_0016_DEPS.png', 40, 45, 40, 56, 35, 7, 15),
(17, 'Roucoups', 'https://www.pokepedia.fr/images/0/07/Miniature_0017_DEPS.png', 63, 60, 55, 71, 50, 7, 15),
(18, 'Roucarnage', 'https://www.pokepedia.fr/images/d/d3/Miniature_0018_DEPS.png', 83, 80, 75, 91, 70, 7, 15),
(19, 'Rattata', 'https://www.pokepedia.fr/images/b/b1/Miniature_0019_DEPS.png', 30, 56, 35, 72, 25, 7, NULL),
(20, 'Rattatac', 'https://www.pokepedia.fr/images/c/c8/Miniature_0020_DEPS.png', 55, 81, 60, 97, 50, 7, NULL),
(21, 'Piafabec', 'https://www.pokepedia.fr/images/6/6c/Miniature_0021_DEPS.png', 40, 60, 30, 70, 31, 7, 15),
(22, 'Rapasdepic', 'https://www.pokepedia.fr/images/e/ed/Miniature_0022_DEPS.png', 65, 90, 65, 100, 61, 7, 15),
(23, 'Abo', 'https://www.pokepedia.fr/images/0/09/Miniature_0023_EV.png', 35, 60, 44, 55, 40, 2, NULL),
(24, 'Arbok', 'https://www.pokepedia.fr/images/b/bf/Miniature_0024_EV.png', 60, 85, 69, 80, 65, 2, NULL),
(25, 'Pikachu', 'https://www.pokepedia.fr/images/3/3d/Miniature_0025_EV.png', 35, 55, 30, 90, 50, 8, NULL),
(26, 'Raichu', 'https://www.pokepedia.fr/images/9/9f/Miniature_0026_EV.png', 60, 90, 55, 100, 90, 8, NULL),
(27, 'Sabelette', 'https://www.pokepedia.fr/images/5/55/Miniature_0027_EV.png', 50, 75, 85, 40, 30, 9, NULL),
(28, 'Sablaireau', 'https://www.pokepedia.fr/images/c/c9/Miniature_0028_EV.png', 75, 100, 110, 65, 55, 9, NULL),
(29, 'Nidoran ♀', 'https://www.pokepedia.fr/images/0/07/Miniature_0029_DEPS.png', 55, 47, 52, 41, 40, 2, NULL),
(30, 'Nidorina', 'https://www.pokepedia.fr/images/1/14/Miniature_0030_DEPS.png', 70, 62, 67, 56, 55, 2, NULL),
(31, 'Nidoqueen', 'https://www.pokepedia.fr/images/a/a5/Miniature_0031_DEPS.png', 90, 82, 87, 76, 75, 2, NULL),
(32, 'Nidoran ♂', 'https://www.pokepedia.fr/images/8/85/Miniature_0032_DEPS.png', 46, 57, 40, 50, 40, 2, NULL),
(33, 'Nidorino', 'https://www.pokepedia.fr/images/1/10/Miniature_0033_DEPS.png', 61, 72, 57, 65, 55, 2, NULL),
(34, 'Nidoking', 'https://www.pokepedia.fr/images/7/79/Miniature_0034_DEPS.png', 81, 92, 77, 85, 75, 2, NULL),
(35, 'Mélofée', 'https://www.pokepedia.fr/images/c/cf/Miniature_0035_EV.png', 70, 45, 48, 35, 60, 7, NULL),
(36, 'Mélodelfe', 'https://www.pokepedia.fr/images/d/d8/Miniature_0036_EV.png', 95, 70, 73, 60, 85, 7, NULL),
(37, 'Goupix', 'https://www.pokepedia.fr/images/f/f6/Miniature_0037_EV.png', 38, 41, 40, 65, 65, 5, NULL),
(38, 'Feunard', 'https://www.pokepedia.fr/images/e/ed/Miniature_0038_EV.png', 73, 76, 75, 100, 100, 5, NULL),
(39, 'Rondoudou', 'https://www.pokepedia.fr/images/9/9e/Miniature_0039_EV.png', 115, 45, 20, 20, 25, 7, NULL),
(40, 'Grodoudou', 'https://www.pokepedia.fr/images/e/ed/Miniature_0040_EV.png', 140, 70, 45, 45, 50, 7, NULL),
(41, 'Nosferapti', 'https://www.pokepedia.fr/images/a/a9/Miniature_0041_DEPS.png', 40, 45, 35, 55, 40, 15, 2),
(42, 'Nosferalto', 'https://www.pokepedia.fr/images/2/2e/Miniature_0042_DEPS.png', 75, 80, 70, 90, 75, 15, 2),
(43, 'Mystherbe', 'https://www.pokepedia.fr/images/7/7c/Miniature_0043_EV.png', 45, 50, 55, 30, 75, 1, 2),
(44, 'Ortide', 'https://www.pokepedia.fr/images/0/0f/Miniature_0044_EV.png', 60, 65, 70, 40, 85, 1, 2),
(45, 'Rafflesia', 'https://www.pokepedia.fr/images/b/b1/Miniature_0045_EV.png', 75, 80, 85, 50, 100, 1, 2),
(46, 'Paras', 'https://www.pokepedia.fr/images/b/b2/Miniature_0046_DEPS.png', 35, 70, 55, 25, 55, 6, 1),
(47, 'Parasect', 'https://www.pokepedia.fr/images/2/25/Miniature_0047_DEPS.png', 60, 95, 80, 30, 80, 6, 1),
(48, 'Mimitoss', 'https://www.pokepedia.fr/images/1/1d/Miniature_0048_EV.png', 60, 55, 50, 45, 40, 6, 2),
(49, 'Aéromite', 'https://www.pokepedia.fr/images/7/73/Miniature_0049_EV.png', 70, 65, 60, 90, 90, 6, 2),
(50, 'Taupiqueur', 'https://www.pokepedia.fr/images/c/c4/Miniature_0050_EV.png', 10, 55, 25, 95, 45, 9, NULL),
(51, 'Triopikeur', 'https://www.pokepedia.fr/images/d/d4/Miniature_0051_EV.png', 35, 80, 50, 120, 70, 9, NULL),
(52, 'Miaouss', 'https://www.pokepedia.fr/images/3/38/Miniature_0052_EV.png', 40, 45, 35, 90, 40, 7, NULL),
(53, 'Persian', 'https://www.pokepedia.fr/images/6/6e/Miniature_0053_EV.png', 65, 70, 60, 115, 65, 7, NULL),
(54, 'Psykokwak', 'https://www.pokepedia.fr/images/2/2e/Miniature_0054_EV.png', 50, 52, 48, 55, 50, 3, NULL),
(55, 'Akwakwak', 'https://www.pokepedia.fr/images/f/f1/Miniature_0055_EV.png', 80, 82, 78, 85, 80, 3, NULL),
(56, 'Férosinge', 'https://www.pokepedia.fr/images/a/ab/Miniature_0056_EV.png', 40, 80, 35, 70, 35, 10, NULL),
(57, 'Colossinge', 'https://www.pokepedia.fr/images/9/91/Miniature_0057_EV.png', 65, 105, 60, 95, 60, 10, NULL),
(58, 'Caninos', 'https://www.pokepedia.fr/images/6/6c/Miniature_0058_EV.png', 55, 70, 45, 60, 50, 5, NULL),
(59, 'Arcanin', 'https://www.pokepedia.fr/images/9/9c/Miniature_0059_EV.png', 90, 110, 80, 95, 80, 5, NULL),
(60, 'Ptitard', 'https://www.pokepedia.fr/images/5/51/Miniature_0060_EV.png', 40, 50, 40, 90, 40, 3, NULL),
(61, 'Têtarte', 'https://www.pokepedia.fr/images/8/84/Miniature_0061_EV.png', 65, 65, 65, 90, 50, 3, NULL),
(62, 'Tartard', 'https://www.pokepedia.fr/images/a/ab/Miniature_0062_EV.png', 90, 85, 95, 70, 70, 3, NULL),
(63, 'Abra', 'https://www.pokepedia.fr/images/9/9b/Miniature_0063_DEPS.png', 25, 20, 15, 90, 105, 11, NULL),
(64, 'Kadabra', 'https://www.pokepedia.fr/images/d/d7/Miniature_0064_DEPS.png', 40, 35, 30, 105, 120, 11, NULL),
(65, 'Alakazam', 'https://www.pokepedia.fr/images/4/4f/Miniature_0065_DEPS.png', 55, 50, 45, 120, 135, 11, NULL),
(66, 'Machoc', 'https://www.pokepedia.fr/images/9/92/Miniature_0066_DEPS.png', 70, 80, 50, 35, 35, 10, NULL),
(67, 'Machopeur', 'https://www.pokepedia.fr/images/9/90/Miniature_0067_DEPS.png', 80, 100, 70, 45, 50, 10, NULL),
(68, 'Mackogneur', 'https://www.pokepedia.fr/images/a/a6/Miniature_0068_DEPS.png', 90, 130, 80, 55, 65, 10, NULL),
(69, 'Chétiflor', 'https://www.pokepedia.fr/images/0/03/Miniature_0069_EV.png', 50, 75, 35, 40, 70, 1, NULL),
(70, 'Boustiflor', 'https://www.pokepedia.fr/images/e/ed/Miniature_0070_EV.png', 65, 90, 50, 55, 85, 1, NULL),
(71, 'Empiflor', 'https://www.pokepedia.fr/images/a/a0/Miniature_0071_EV.png', 80, 105, 65, 70, 100, 1, NULL),
(72, 'Tentacool', 'https://www.pokepedia.fr/images/b/bc/Miniature_0072_EV.png', 40, 40, 35, 70, 100, 3, 2),
(73, 'Tentacruel', 'https://www.pokepedia.fr/images/3/31/Miniature_0073_EV.png', 80, 70, 65, 100, 120, 3, 2),
(74, 'Racaillou', 'https://www.pokepedia.fr/images/2/20/Miniature_0074_EV.png', 40, 80, 100, 20, 30, 9, 4),
(75, 'Gravalanch', 'https://www.pokepedia.fr/images/9/94/Miniature_0075_EV.png', 55, 95, 115, 35, 45, 9, 4),
(76, 'Grolem', 'https://www.pokepedia.fr/images/a/a4/Miniature_0076_EV.png', 80, 110, 130, 45, 55, 9, 4),
(77, 'Ponyta', 'https://www.pokepedia.fr/images/f/f3/Miniature_0077_DEPS.png', 50, 85, 55, 90, 65, 5, NULL),
(78, 'Galopa', 'https://www.pokepedia.fr/images/0/0c/Miniature_0078_DEPS.png', 65, 100, 70, 105, 80, 5, NULL),
(79, 'Ramoloss', 'https://www.pokepedia.fr/images/3/38/Miniature_0079_EV.png', 90, 65, 65, 15, 40, 3, 11),
(80, 'Flagadoss', 'https://www.pokepedia.fr/images/4/4a/Miniature_0080_EV.png', 95, 75, 110, 30, 80, 3, 11),
(81, 'Magnéti', 'https://www.pokepedia.fr/images/c/c3/Miniature_0081_EV.png', 25, 35, 70, 45, 95, 8, NULL),
(82, 'Magnéton', 'https://www.pokepedia.fr/images/a/a3/Miniature_0082_EV.png', 50, 60, 95, 70, 120, 8, NULL),
(83, 'Canarticho', 'https://www.pokepedia.fr/images/e/e8/Miniature_0083_DEPS.png', 52, 65, 55, 60, 58, 7, 15),
(84, 'Doduo', 'https://www.pokepedia.fr/images/8/83/Miniature_0084_EV.png', 35, 85, 45, 75, 35, 7, 15),
(85, 'Dodrio', 'https://www.pokepedia.fr/images/5/5e/Miniature_0085_EV.png', 60, 110, 70, 100, 60, 7, 15),
(86, 'Otaria', 'https://www.pokepedia.fr/images/f/fe/Miniature_0086_EV.png', 65, 45, 55, 45, 70, 3, NULL),
(87, 'Lamantine', 'https://www.pokepedia.fr/images/f/ff/Miniature_0087_EV.png', 90, 70, 80, 70, 95, 3, NULL),
(88, 'Tadmorv', 'https://www.pokepedia.fr/images/f/f1/Miniature_0088_EV.png', 80, 80, 50, 25, 40, 2, NULL),
(89, 'Grotadmorv', 'https://www.pokepedia.fr/images/a/a6/Miniature_0089_EV.png', 105, 105, 75, 50, 65, 2, NULL),
(90, 'Kokiyas', 'https://www.pokepedia.fr/images/9/9c/Miniature_0090_EV.png', 30, 65, 100, 40, 45, 3, NULL),
(91, 'Crustabri', 'https://www.pokepedia.fr/images/8/8a/Miniature_0091_EV.png', 50, 95, 180, 70, 85, 3, 14),
(92, 'Fantominus', 'https://www.pokepedia.fr/images/c/cf/Miniature_0092_EV.png', 30, 35, 30, 80, 100, 12, 2),
(93, 'Spectrum', 'https://www.pokepedia.fr/images/9/95/Miniature_0093_EV.png', 45, 50, 45, 95, 115, 12, 2),
(94, 'Ectoplasma', 'https://www.pokepedia.fr/images/1/13/Miniature_0094_EV.png', 60, 65, 60, 110, 130, 12, 2),
(95, 'Onix', 'https://www.pokepedia.fr/images/4/4e/Miniature_0095_DEPS.png', 35, 45, 160, 70, 30, 9, 4),
(96, 'Soporifik', 'https://www.pokepedia.fr/images/a/ac/Miniature_0096_EV.png', 60, 48, 45, 42, 90, 11, NULL),
(97, 'Hypnomade', 'https://www.pokepedia.fr/images/1/10/Miniature_0097_EV.png', 85, 73, 70, 67, 115, 11, NULL),
(98, 'Krabby', 'https://www.pokepedia.fr/images/8/87/Miniature_0098_DEPS.png', 30, 105, 90, 50, 25, 3, NULL),
(99, 'Krabboss', 'https://www.pokepedia.fr/images/6/67/Miniature_0099_DEPS.png', 55, 130, 115, 75, 50, 3, NULL),
(100, 'Voltorbe', 'https://www.pokepedia.fr/images/b/bb/Miniature_0100_EV.png', 40, 30, 50, 100, 55, 8, NULL),
(101, 'Electrode', 'https://www.pokepedia.fr/images/c/c4/Miniature_0101_EV.png', 60, 50, 70, 140, 80, 8, NULL),
(102, 'Noeunoeuf', 'https://www.pokepedia.fr/images/2/26/Miniature_0102_EV.png', 60, 40, 80, 40, 60, 1, 11),
(103, 'Noadkoko', 'https://www.pokepedia.fr/images/8/8d/Miniature_0103_EV.png', 95, 95, 85, 55, 125, 1, 11),
(104, 'Osselait', 'https://www.pokepedia.fr/images/1/16/Miniature_0104_DEPS.png', 50, 50, 95, 35, 40, 9, NULL),
(105, 'Ossatueur', 'https://www.pokepedia.fr/images/3/35/Miniature_0105_DEPS.png', 60, 80, 110, 45, 50, 9, NULL),
(106, 'Kicklee', 'https://www.pokepedia.fr/images/5/56/Miniature_0106_EV.png', 50, 120, 53, 87, 35, 10, NULL),
(107, 'Tygnon', 'https://www.pokepedia.fr/images/8/82/Miniature_0107_EV.png', 50, 105, 79, 76, 35, 10, NULL),
(108, 'Excelangue', 'https://www.pokepedia.fr/images/e/e6/Miniature_0108_DEPS.png', 90, 55, 75, 30, 60, 7, NULL),
(109, 'Smogo', 'https://www.pokepedia.fr/images/7/72/Miniature_0109_EV.png', 40, 65, 95, 35, 60, 2, NULL),
(110, 'Smogogo', 'https://www.pokepedia.fr/images/2/2a/Miniature_0110_EV.png', 65, 90, 120, 60, 85, 2, NULL),
(111, 'Rhinocorne', 'https://www.pokepedia.fr/images/7/71/Miniature_0111_EV.png', 80, 85, 95, 25, 30, 9, 4),
(112, 'Rhinoféros', 'https://www.pokepedia.fr/images/e/e7/Miniature_0112_EV.png', 105, 130, 120, 40, 45, 9, 4),
(113, 'Leveinard', 'https://www.pokepedia.fr/images/e/e0/Miniature_0113_EV.png', 250, 5, 5, 50, 105, 7, NULL),
(114, 'Saquedeneu', 'https://www.pokepedia.fr/images/2/28/Miniature_0114_DEPS.png', 65, 55, 115, 60, 100, 1, NULL),
(115, 'Kangourex', 'https://www.pokepedia.fr/images/2/25/Miniature_0115_DEPS.png', 105, 95, 80, 90, 40, 7, NULL),
(116, 'Hypotrempe', 'https://www.pokepedia.fr/images/d/da/Miniature_0116_EV.png', 30, 40, 70, 60, 70, 3, NULL),
(117, 'Hypocéan', 'https://www.pokepedia.fr/images/2/2e/Miniature_0117_EV.png', 55, 65, 95, 85, 95, 3, NULL),
(118, 'Poissirène', 'https://www.pokepedia.fr/images/5/5c/Miniature_0118_DEPS.png', 45, 67, 60, 63, 50, 3, NULL),
(119, 'Poissoroy', 'https://www.pokepedia.fr/images/1/1a/Miniature_0119_DEPS.png', 80, 92, 65, 68, 80, 3, NULL),
(120, 'Stari', 'https://www.pokepedia.fr/images/1/17/Miniature_0120_DEPS.png', 30, 45, 55, 85, 70, 3, NULL),
(121, 'Staross', 'https://www.pokepedia.fr/images/9/9f/Miniature_0121_DEPS.png', 60, 75, 85, 115, 100, 3, 11),
(122, 'M. Mime', 'https://www.pokepedia.fr/images/e/ed/Miniature_0122_DEPS.png', 40, 45, 65, 90, 100, 11, NULL),
(123, 'Insécateur', 'https://www.pokepedia.fr/images/a/a7/Miniature_0123_EV.png', 70, 110, 80, 105, 55, 6, NULL),
(124, 'Lippoutou', 'https://www.pokepedia.fr/images/0/0c/Miniature_0124_DEPS.png', 65, 50, 35, 95, 95, 14, 11),
(125, 'Elektek', 'https://www.pokepedia.fr/images/7/74/Miniature_0125_EV.png', 65, 83, 57, 105, 85, 8, NULL),
(126, 'Magmar', 'https://www.pokepedia.fr/images/e/e9/Miniature_0126_EV.png', 65, 95, 57, 93, 85, 5, NULL),
(127, 'Scarabrute', 'https://www.pokepedia.fr/images/6/65/Miniature_0127_DEPS.png', 65, 125, 100, 85, 55, 6, NULL),
(128, 'Tauros', 'https://www.pokepedia.fr/images/d/d8/Miniature_0128_EV.png', 75, 100, 95, 110, 70, 7, NULL),
(129, 'Magicarpe', 'https://www.pokepedia.fr/images/2/29/Miniature_0129_EV.png', 20, 10, 55, 80, 20, 3, NULL),
(130, 'Léviator', 'https://www.pokepedia.fr/images/4/43/Miniature_0130_EV.png', 95, 125, 79, 81, 100, 3, 15),
(131, 'Lokhlass', 'https://www.pokepedia.fr/images/d/d8/Miniature_0131_EV.png', 130, 85, 80, 60, 95, 3, 14),
(132, 'Métamorph', 'https://www.pokepedia.fr/images/9/91/Miniature_0132_EV.png', 48, 48, 48, 48, 48, 7, NULL),
(133, 'Evoli', 'https://www.pokepedia.fr/images/6/6f/Miniature_0133_EV.png', 55, 55, 50, 55, 65, 7, NULL),
(134, 'Aquali', 'https://www.pokepedia.fr/images/5/53/Miniature_0134_EV.png', 130, 65, 60, 65, 110, 3, NULL),
(135, 'Voltali', 'https://www.pokepedia.fr/images/4/40/Miniature_0135_EV.png', 65, 65, 60, 130, 110, 8, NULL),
(136, 'Pyroli', 'https://www.pokepedia.fr/images/6/6e/Miniature_0136_EV.png', 65, 130, 60, 65, 110, 5, NULL),
(137, 'Porygon', 'https://www.pokepedia.fr/images/8/80/Miniature_0137_EV.png', 65, 60, 70, 40, 75, 7, NULL),
(138, 'Amonita', 'https://www.pokepedia.fr/images/8/84/Miniature_0138_DEPS.png', 35, 40, 100, 35, 90, 4, 3),
(139, 'Amonistar', 'https://www.pokepedia.fr/images/f/fe/Miniature_0139_DEPS.png', 70, 60, 125, 55, 115, 4, 3),
(140, 'Kabuto', 'https://www.pokepedia.fr/images/8/83/Miniature_0140_DEPS.png', 30, 80, 90, 55, 45, 4, 3),
(141, 'Kabutops', 'https://www.pokepedia.fr/images/0/0c/Miniature_0141_DEPS.png', 60, 115, 105, 80, 70, 4, 3),
(142, 'Ptéra', 'https://www.pokepedia.fr/images/3/33/Miniature_0142_DEPS.png', 80, 105, 65, 130, 60, 4, 15),
(143, 'Ronflex', 'https://www.pokepedia.fr/images/5/5e/Miniature_0143_EV.png', 160, 110, 65, 30, 65, 7, NULL),
(144, 'Artikodin', 'https://www.pokepedia.fr/images/6/6e/Miniature_0144_EV.png', 90, 85, 100, 85, 125, 14, 15),
(145, 'Electhor', 'https://www.pokepedia.fr/images/7/74/Miniature_0145_EV.png', 90, 90, 85, 100, 125, 8, 15),
(146, 'Sulfura', 'https://www.pokepedia.fr/images/b/b0/Miniature_0146_EV.png', 90, 100, 90, 90, 125, 5, 15),
(147, 'Minidraco', 'https://www.pokepedia.fr/images/7/75/Miniature_0147_EV.png', 41, 64, 45, 50, 50, 13, NULL),
(148, 'Draco', 'https://www.pokepedia.fr/images/9/99/Miniature_0148_EV.png', 61, 84, 65, 70, 70, 13, NULL),
(149, 'Dracolosse', 'https://www.pokepedia.fr/images/4/43/Miniature_0149_EV.png', 91, 134, 95, 80, 100, 13, 15),
(150, 'Mewtwo', 'https://www.pokepedia.fr/images/2/22/Miniature_0150_EV.png', 106, 110, 90, 130, 154, 11, NULL),
(151, 'Mew', 'https://www.pokepedia.fr/images/3/33/Miniature_0151_EV.png', 100, 100, 100, 100, 100, 11, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pokemonutilisateur`
--

DROP TABLE IF EXISTS `pokemonutilisateur`;
CREATE TABLE IF NOT EXISTS `pokemonutilisateur` (
  `IdUtilisateur` int NOT NULL,
  `Id_Pokemon` int NOT NULL,
  `dateCapture` date DEFAULT NULL,
  PRIMARY KEY (`IdUtilisateur`,`Id_Pokemon`),
  KEY `Id_Pokemon` (`Id_Pokemon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typepokemon`
--

DROP TABLE IF EXISTS `typepokemon`;
CREATE TABLE IF NOT EXISTS `typepokemon` (
  `IdType` int NOT NULL AUTO_INCREMENT,
  `libelleType` varchar(50) NOT NULL,
  PRIMARY KEY (`IdType`),
  UNIQUE KEY `libelleType` (`libelleType`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `typepokemon`
--

INSERT INTO `typepokemon` (`IdType`, `libelleType`) VALUES
(10, 'Combat'),
(13, 'Dragon'),
(3, 'Eau'),
(8, 'Electrique'),
(5, 'Feu'),
(14, 'Glace'),
(6, 'Insecte'),
(7, 'Normal'),
(1, 'Plante'),
(2, 'Poison'),
(11, 'Psy'),
(4, 'Roche'),
(9, 'Sol'),
(12, 'Spectre'),
(15, 'Vol');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `IdUtilisateur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `login` varchar(191) DEFAULT NULL,
  `hashMotDePasse` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdUtilisateur`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUtilisateur`, `nom`, `prenom`, `login`, `hashMotDePasse`) VALUES
(1, 'kiki', 'pimprenelle', 'peach', '$2y$10$TqdoMVy2xlqbSHFYl.OwieRqncgSgYFaeoibBaRFuzFuJLvtc.g5i');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `evolutionpokemon`
--
ALTER TABLE `evolutionpokemon`
  ADD CONSTRAINT `fk_evolutionPokemon_idEvolution` FOREIGN KEY (`idEvolution`) REFERENCES `pokemon` (`IdPokemon`),
  ADD CONSTRAINT `fk_evolutionPokemon_idPokemon` FOREIGN KEY (`idPokemon`) REFERENCES `pokemon` (`IdPokemon`);

--
-- Contraintes pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`IdTypePokemon`) REFERENCES `typepokemon` (`IdType`),
  ADD CONSTRAINT `pokemon_ibfk_3` FOREIGN KEY (`IdSecondTypePokemon`) REFERENCES `typepokemon` (`IdType`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
