-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 19 mai 2024 à 21:33
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rapido`
--

-- --------------------------------------------------------

--
-- Structure de la table `chauffeurs`
--

CREATE TABLE `chauffeurs` (
  `chauffeur_id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenoms` varchar(50) DEFAULT NULL,
  `telephone` bigint(20) DEFAULT NULL,
  `sexe` varchar(2) DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chauffeurs`
--

INSERT INTO `chauffeurs` (`chauffeur_id`, `nom`, `prenoms`, `telephone`, `sexe`, `disponible`) VALUES
(1, 'Affectez-en un !', '', 0, '', 1),
(2, 'ADE', 'Eli', 53041691, 'M', 1),
(3, 'KPA', 'Morel', 58169247, 'M', 0),
(4, 'OBE', 'Orens', 40563978, 'M', 0),
(5, 'LOTSU', 'RIck', 96458712, 'M', 1),
(6, 'AITON', 'Didier', 5341578, 'M', 1),
(7, 'ABALO', 'Claude', 55405569, 'M', 1),
(8, 'SEFAN', 'Gwladys', 40557644, 'F', 1),
(9, 'OKERE', 'Rafiatou', 97841133, 'F', 1),
(10, 'MINKI', 'Chancelle', 5121478, 'F', 1),
(11, 'AIKOUN', 'Dingue', 63847922, 'M', 1);

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `pointDepart` varchar(100) NOT NULL,
  `pointArrivee` varchar(100) NOT NULL,
  `dateHeure` datetime NOT NULL,
  `chauffeur_id` int(11) DEFAULT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`course_id`, `pointDepart`, `pointArrivee`, `dateHeure`, `chauffeur_id`, `status`) VALUES
(1, 'Dangbo', 'Cotonou', '2024-05-18 10:00:00', 2, 'Terminée'),
(2, 'Cotonou', 'Dangbo', '2024-05-22 16:00:00', 2, 'Terminée'),
(3, 'Bamize', 'IMSP', '2024-05-17 17:00:00', 3, 'En cours'),
(4, 'IMSP', 'Nankesodji', '2024-05-18 18:00:00', 4, 'En cours'),
(5, 'Nankesodji', 'Takon', '2024-01-19 11:00:00', 1, 'En attente'),
(6, 'Cotonou', 'Dangbo', '2024-05-30 11:00:00', 1, 'En attente');

-- --------------------------------------------------------

--
-- Structure de la table `operateurs`
--

CREATE TABLE `operateurs` (
  `operateur_id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chauffeurs`
--
ALTER TABLE `chauffeurs`
  ADD PRIMARY KEY (`chauffeur_id`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `chauffeur_id` (`chauffeur_id`);

--
-- Index pour la table `operateurs`
--
ALTER TABLE `operateurs`
  ADD PRIMARY KEY (`operateur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chauffeurs`
--
ALTER TABLE `chauffeurs`
  MODIFY `chauffeur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `operateurs`
--
ALTER TABLE `operateurs`
  MODIFY `operateur_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`chauffeur_id`) REFERENCES `chauffeurs` (`chauffeur_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
