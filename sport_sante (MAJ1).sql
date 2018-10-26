-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Ven 26 Octobre 2018 à 12:29
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sport_sante`
--

-- --------------------------------------------------------

--
-- Structure de la table `Activite`
--

CREATE TABLE `Activite` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Activite`
--

INSERT INTO `Activite` (`id`, `nom`) VALUES
(1, 'Activité Physique Adaptée'),
(2, 'Gymnastique Séniors'),
(3, 'Activité Physique Adaptée'),
(4, 'Sports divers - séance APA'),
(5, 'Journées de promotion'),
(6, 'Boxe éducative et boxe loisir - Enfants'),
(7, 'Boxe éducative et boxe loisir - Adultes'),
(8, 'Boxe - Journées événementielles (Sport pour tous, Santé Sport et Bien-être, Sentez-vous Sport...)'),
(9, 'Rugby - Journées Santé Scolaire'),
(10, 'Football'),
(11, 'Football - Journée Olympiad\'Auch '),
(12, 'Gym pour les personnes présentant une pathologie'),
(13, 'Gym'),
(14, 'Gym Santé Adaptée'),
(15, 'Aquagym'),
(16, 'Natation et autres activités aquatiques '),
(17, 'Natation Handisport'),
(18, 'Tennis de table Sport Santé - Handisport - Sport adapté - Loisir - Famille'),
(19, 'Tennis de table'),
(20, 'Tennis de table - Journée Ping Attitude Santé'),
(21, 'Sports divers adaptés'),
(22, 'Athlé Santé (marche nordique, remise en forme, condition physique, running)'),
(23, 'Athlé Santé - Sorties, stages, tests physiques'),
(24, 'Divers'),
(25, 'Sports de Quilles'),
(26, 'Sports de Quilles'),
(27, 'Hockey'),
(28, 'Hockey'),
(29, 'Hockey Santé, ateliers de vacances et autres actions vers divers publics'),
(30, 'Rugby'),
(31, 'Rugby - Journée Olympiad\'Auch'),
(32, 'Multisport'),
(33, 'Pilate / Stretching postural / Marche nordique'),
(34, 'Zumba / Piloxing'),
(35, 'Gymnastique d\'entretien'),
(36, 'Hockey - Sport Loisirs / Sport Santé'),
(37, 'Découvertes Multisports Vacances - Hockey'),
(38, 'Tennis Santé'),
(39, 'Cancer Tennis Santé'),
(40, 'tennis - Bouge avec ton école'),
(41, 'Tennis'),
(42, 'Journée Tennis Santé'),
(43, 'Sports divers - Lycée tour sport santé'),
(44, 'Judo adapté');

-- --------------------------------------------------------

--
-- Structure de la table `activite_publics`
--

CREATE TABLE `activite_publics` (
  `fk_activite` int(11) NOT NULL,
  `fk_publics` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `activite_publics`
--

INSERT INTO `activite_publics` (`fk_activite`, `fk_publics`) VALUES
(1, 5),
(1, 8),
(2, 3),
(2, 8),
(3, 1),
(3, 2),
(3, 3),
(3, 10),
(4, 5),
(4, 10),
(5, 5),
(5, 10),
(6, 1),
(6, 10),
(7, 2),
(7, 3),
(7, 4),
(7, 10),
(8, 5),
(8, 10),
(9, 1),
(9, 10),
(10, 1),
(10, 6),
(10, 8),
(10, 9),
(11, 1),
(11, 6),
(11, 8),
(12, 5),
(12, 8),
(13, 2),
(13, 9),
(14, 5),
(14, 7),
(15, 2),
(15, 3),
(15, 6),
(15, 8),
(16, 5),
(16, 10),
(17, 2),
(17, 7),
(18, 5),
(18, 10),
(19, 1),
(19, 6),
(19, 8),
(19, 9),
(20, 5),
(20, 6),
(20, 8),
(20, 9),
(21, 2),
(21, 3),
(21, 7),
(21, 8),
(22, 5),
(22, 6),
(22, 8),
(23, 5),
(23, 6),
(23, 8),
(24, 5),
(24, 6),
(24, 8),
(25, 1),
(25, 6),
(25, 8),
(25, 9),
(26, 2),
(26, 6),
(26, 8),
(26, 9),
(27, 1),
(27, 6),
(27, 8),
(27, 9),
(28, 1),
(28, 2),
(28, 10),
(29, 1),
(29, 2),
(29, 10),
(30, 1),
(30, 6),
(30, 8),
(30, 9),
(31, 1),
(31, 6),
(31, 8),
(32, 1),
(32, 2),
(32, 3),
(32, 7),
(33, 1),
(33, 2),
(33, 3),
(33, 6),
(33, 8),
(34, 1),
(34, 2),
(34, 6),
(35, 1),
(35, 2),
(35, 6),
(36, 1),
(36, 2),
(36, 3),
(36, 6),
(36, 7),
(36, 8),
(37, 1),
(37, 6),
(38, 5),
(38, 6),
(38, 8),
(39, 5),
(39, 8),
(40, 1),
(40, 6),
(40, 8),
(40, 9),
(41, 5),
(41, 8),
(42, 5),
(42, 6),
(42, 8),
(43, 1),
(43, 6),
(43, 8),
(43, 9),
(44, 5),
(44, 8);

-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Categorie`
--

INSERT INTO `Categorie` (`id`, `nom`) VALUES
(1, 'plain air'),
(2, 'en salle'),
(3, 'individuel'),
(4, 'collectif');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_activite`
--

CREATE TABLE `categorie_activite` (
  `fk_categorie` int(11) NOT NULL,
  `fk_activite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Club`
--

CREATE TABLE `Club` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `descriptif` text NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `site_web` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `id_Image` int(11) DEFAULT NULL,
  `coordonnee` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Club`
--

INSERT INTO `Club` (`id`, `nom`, `descriptif`, `adresse`, `contact`, `telephone`, `mail`, `site_web`, `label`, `id_Image`, `coordonnee`) VALUES
(5, 'Activité Physique Adaptée de Gymnastique Volontaire de Lectoure - APAGV', 'association déclarée est en activité depuis 8 ans.\r\nSituée à LECTOURE (32700), elle est spécialisée dans le secteur des activités de clubs de sports.', 'La Bourdette 32700 LECTOURE', NULL, NULL, NULL, NULL, 'Niveau de labellisation : 2 - Diversification', NULL, '[43.963761,0.651681]'),
(6, 'Activités Physiques Adaptées de Gimont - APA', 'Cette gymnastique volontaire propose des activités adaptées en groupe, pour l\'éducation sportive au service de la santé des pratiquants. Une gymnastique douce, conviviale, de proximité, et encadrée par une éducatrice sportive diplômée en activités physiques adaptées.', '85 rue Nationale 32200 GIMONT', 'Jean-Jacques DEMERONT', '06 74 93 81 56', 'apagimont@hotmail.fr', NULL, 'Niveau de labellisation : 2 - Diversification', NULL, '[43.626164,0.876762]'),
(7, 'Activités Physiques Adaptées de l\'Office Intercommunal du Sport de la Gascogne Toulousaine - OIS', 'L\'Office Intercommunal du Sport est une association qui regroupe toutes les associations sportives de la Communauté de Communes de la Gascogne Toulousaine. Son but est de favoriser le développement du sport pour tous sur le territoire de la Communauté de Communes de la Gascogne Toulousaine. Il assure donc la promotion du sport, fait respecter l\'équité du traitement des clubs et facilite le travail des associations.', 'Avenue du Bataillon de l\'Armagnac 32600 L\'ISLE JOURDAIN', 'Romain AUZEMERY', '05 62 62 67 43', 'oisgt.romain-auzemery@orange.fr', 'http://www.sport-gascognetoulousaine.fr', 'Niveau de labellisation : 3 - Exemplarité', NULL, '[43.6149442,1.0743454999999358]'),
(8, 'Association Sportive de Boxe Éducative et Loisir Mixte 32 - ASBLM', 'L\'association sportive de boxe éducative et de loisirs mixtes 32 (ASBLM 32) a pour objet la pratique de :\r\n\r\nla boxe loisir mixte, pour jeunes et adultes, filles comme garçons, de proposer des séances d’entraînement attrayantes afin d’établir entre tous les membres du club des relations fortes et constructives, de partager une aventure humaine peu commune.\r\n\r\nL’association est affiliée aux fédérations sportives nationales régissant les sports qu’elle pratique. Elle a choisit aussi d’adhérer à la Fédération Française du Sport Adapté.', '3 route de Sirac 32430 SAINT-CRICQ', 'Sahel KOUIDER', '06 61 58 04 50', 'kuid31@yahoo.fr', NULL, '1 - Lancement', NULL, '[43.7002724,0.9957500000000437]'),
(9, 'Association Sportive Fleurantine - ASF Rugby Fleurance', 'L\'Association Sportive Fleurantine est un club de rugby à XV français situé à Fleurance (Gers). Il évolue actuellement en Fédérale 1.', 'BP 54 (bureaux situés au Stade Marius Lacoste) 32500 FLEURANCE Cedex', NULL, '05 62 06 29 23', 'asfrugby@wanadoo.fr', 'http://www.asf-rugby.fr', '1 - Lancement', NULL, '[43.8529995,0.6658909000000222]'),
(10, 'Auch Football', 'AUCH FOOTBALL, Association déclarée, a débuté son activité en juillet 1992.\r\n\r\nAUCH FOOTBALL évolue sur le secteur d\'activité : Activités sportives, récréatives et de loisirs', 'Complexe Patrice Brocas\r\nAvenue des Pyrénées\r\n32000 AUCH', 'Romain DELACHOUX', '05 62 05 44 85', 'contact@auchfootball.fr\r\n\r\nromain.delachoux@gmail.com', 'http://www.auchfootball.com/', '2 -Diversification', NULL, '[43.6350392,0.5832656000000043]'),
(11, 'Au Jardin de la Forme', 'Au jardin de la Forme, 5 animateurs diplomés proposent 20 séances de gym d\'entretien chaque semaine à l\'Isle Jourdain . MATIN, MIDI et SOIREE, les séances sont adapltées à vos capacités, cours variés,  dynamiques ou plus doux', 'Mairie de L\'Isle Jourdain 32600 L\'ISLE JOURDAIN', NULL, NULL, NULL, 'http://www.sport-gascognetoulousaine.fr', '2 -Diversification', NULL, '[43.6133368,1.0815575000000308]'),
(12, 'Cercle des Nageurs Auscitains - CNA', 'Le Cercle des Nageurs a été créé en 1946 bien avant que n\'apparaisse le bassin 25m x 9 m en 1965.\r\n\r\nLe CN Auch est un club novateur puisque c\'est le premier qui propose une section \"bébés nageurs\" en 1978 qui perdure aujourd\'hui.\r\n\r\nDans les années 80 le club s\'ouvre à plusieurs pratiques (naissance de l\'école de natation, de la section adultes...)\r\n\r\nLa création du bassin actuel 25m x 15m en 1985 renforce les sections existantes et permet d\'ouvrir de nouveaux groupes comme la naissance de la section sportive avec le collège Mathalin en 1995.', 'Résidence du Moulias 32000 AUCH', 'Grégory BOIVIN', '05 62 05 67 42', 'cna3@wanadoo.fr\r\n\r\ngregory.boivin@free.fr', 'http://cnauch.fr', '1 - Lancement', NULL, '[43.6364992,0.583602199999973]'),
(13, 'Cercle Pongiste Auch - CPA', 'Le Cercle pongiste auscitain ou CP Auch est un club français de tennis de table basé à Auch, dans le département du Gers.', 'Salle du camping\r\nRue du Général De Gaulle\r\n32000 AUCH', 'Bruno CARVALHO', '06 84 30 03 35', 'cpauch@free.fr\r\n\r\nb_runo2004@hotmail.fr', 'http://www.cpauch.com/', '2 -Diversification', NULL, '[43.64783,0.6341589999999542]'),
(14, 'Club des Retraités Sportifs Auscitains - CRSA', 'Notre association est affiliée à la FFRS (Fédération française de la  retraite sportive) et qualifiée pour organiser la pratique d\'activités  physiques adaptée pour les plus de 50 ans. Les animateurs suivent des stages de formation organisés par la  FFRS, agréée par le ministère de la jeunesse et des sports, à l\'issue  desquels leur sont délivrés des brevets fédéraux. ', '36 rue des Canaris 32000 AUCH', 'Jean-Jacques DUMONT\r\n\r\nJacques AROLDI', '05 62 05 35 23', 'ladum@sfr.fr\r\n\r\ncrsa32@orange.fr', 'http://www.crsa32.com', '1 - Lancement', NULL, '[43.6345421,0.5919656999999461]'),
(15, 'Comité Départemental d\'Athlétisme - CDA', 'Le sport de l\'athlétisme, sous toutes ses formes.\r\n- Organiser les championnats départementaux.\r\n- Étudier tous les aspects relatifs a la pratique de ce sport dans son département.', '36 rue des Canaris 32000 AUCH', 'Sophie MEDIAMOLE', '06 70 06 13 72', 'comite.dep.athletisme.du.gers@gmail.com\r\n\r\nsophie.mediamole@hotmail.fr', 'http://www.cda32.fr', '2 -Diversification', NULL, '[43.6345421,0.5919656999999461]'),
(16, 'Comité Départemental de Bowling et Sport de Quilles', ' Promouvoir, développer et organiser les activités et les disciplines suivantes bowling, Nine pin bowling classic (NBC), Nine pin bowling schere (NBS), quilles St Gall, quilles de 6, quilles au maillet, quilles de 8, quilles de 9, toute autre pratique qui pourrait naître et être reconnue à condition d\'être agréée par l\'assemblée générale de la FFBSQ. représenter tous les licenciés pratiquant le bowling et les sports de quilles et les associations sportives affiliées, participer aux missions', '36 rue des Canaris 32000 AUCH', 'Simon NITARO', '07 70 47 99 10', 'snitaro@geag.org', NULL, '2 -Diversification', NULL, '[43.6345421,0.5919656999999461]'),
(17, 'Comité Départemental de Hockey-sur-Gazon du Gers', 'Depuis 10 ans, le Gers est une nouvelle contrée du hockey Français. Sous l\'impulsion de Stéphane MONTECOT et de Christophe GERMAIN, les deux fondateurs de l\'Isle-Jourdain HC, le comité départemental du Gers du hockey a été créé, il y  a 5 ans.', '17 rue de Gascogne 32600 L\'ISLE JOURDAIN', 'Simon NITARO', '07 50 91 04 38', 'contact@cd32.hockey-midi-pyrenees.fr\r\n\r\nsnitaro@geag.org', 'http://cd32.hockey-midi-pyrenees.fr', '2 -Diversification', NULL, '[43.6066897,1.0911065999999892]'),
(18, 'Comité Départemental de Rugby', 'COMITE DEPARTEMENTAL RUGBY DU GERS, association déclarée est active depuis 20 ans.\r\nDomiciliée à AUCH (32000), elle est spécialisée dans le secteur des activités de clubs de sports. Son effectif est compris entre 1 et 2 salariés.', '36 rue des Canaris 32000 AUCH', 'Kévin RIBREAU', '05 62 05 48 29', 'rugby.gers@wanadoo.fr', NULL, '2 -Diversification', NULL, '[43.6345421,0.5919656999999461]'),
(19, 'Comité Départemental Sport Adapté du Gers - CDSA', 'Organe déconcentré de la Fédération Française du Sport Adapté au niveau départemental, il organise, réglemente et assure la promotion des activités physiques et sportives auprès des personnes en situation de handicap mental, psychique, troubles du comportement et de l\'adaptation.', '14 place du Maréchal Lannes 32000 AUCH', 'Amandine CAPUS', '06 40 41 56 89', 'cdsa32@ffsa.asso.fr\r\n\r\namandine.capus@ffsa.asso.fr', 'cdsa-32.wixsite.com/cdsa32', '2 -Diversification', NULL, '[43.636697,0.5855920999999853]'),
(20, 'Form\'essentielle', 'Formessentielle est une structure associative de gymnastique labellisée SPORT SANTE. Elle a vu le jour en avril 2011, au cœur de la ville d’Auch. Ses activités sont accessibles à tout le monde quelque soit l\'âge (Enfants, Adultes et Seniors) et la condition physique dans le respect des valeurs Sport Santé. \r\nLes cours sont encadrés par un éducateur sportif centré sur la personne grâce à une pédagogie différenciée. Son rôle est d’observer, de corriger, de conseiller et d’informer, il incite à prendre de bonnes habitudes de vie et à gérer son propre capital santé.', '25 Bd Roquelaure 32000 AUCH', 'Danielle Loizon-Dalla Nora', '06 87 01 93 01', 'patricia.lacombe1919@gmail.com\r\n\r\nnanou.dn@gmail.com', 'http://www.formessentielle.fr', '2 - Diversification', NULL, '[43.6501577,0.586612999999943]'),
(21, 'Isle Jourdain Hockey Club - IJHC', 'Il semble que le hockey sur gazon soit le plus ancien jeu de balle avec crosse, et qu’il ait été joué pendant des siècles dans de nombreuses régions dans le monde avant de devenir le sport tel qu’il est aujourd’hui. ', '32600 L\'ISLE JOURDAIN', 'Flavien VIDAILLAC', '06 26 62 66 23', 'flaviohockey@hotmail.fr', 'http://www.ijhc.fr', '2 - Diversification', NULL, '[43.6138369,1.0817409999999654]'),
(22, 'Tennis Club de Mauvezin', 'Club de tennis de Mauvezin', 'Route d\'Auch 32120 MAUVEZIN', 'Alain GIUSTI', '05 62 06 86 38', 'alaingiusti@neuf.fr', NULL, '1 - Lancement', NULL, '[43.725737,0.875205899999969]'),
(23, 'Union Nationale du Sport Scolaire - UNSS', 'Créée en 1932 l’UNSS propose plus de 100 pratiques sportives à plus d’1 million de licenciés dont 42% de filles. Dans les 9500 associations sportives, 35 000 professeurs d’EPS encadrent pour permettre à la jeunesse du secondaire de vivre des moments uniques. A 20 euros en moyenne la licence, l’UNSS s’ouvre à tous et pour tous afin de sensibiliser aux valeurs du fair-play ainsi qu’à une sensibilisation sur les problèmes de santé et sur le handicap. A l’UNSS, partageons plus que du sport !', '7 bis, rue Gambetta 32000 AUCH', NULL, '05 67 76 51 99', 'unss32@gmail.com', NULL, '2 - Diversification', NULL, '[43.647576,0.5848023999999441]'),
(24, 'USP - Judo Club Plaisance', 'Environ 130 pratiquants. Dispose d’une excellente image, aussi bien auprès des enfants, grâce notamment à la médiatisation de ses champions, que des parents très sensibles aux valeurs éducatives véhiculées par ce sport.\r\nC’est une tradition de sérieux et de respect de l’autre; c’est l’apprentissage de la vie.\r\nL’activité est proposée à partir de 6 ans.\r\nLe niveau atteint en compétition est élevé, plusieurs judokas se sont déjà qualifiés pour les championnats de France.\r\nChaque année une compétition régionale rassemblant environ 700 participants est organisée par le club.', '7 ter Rue des Écoles, 31830 Plaisance-du-Touch', 'Laurence FOURGEAUD', NULL, NULL, NULL, '1 - Lancement', NULL, '[43.5675514,1.2964587999999821]');

-- --------------------------------------------------------

--
-- Structure de la table `club_activite`
--

CREATE TABLE `club_activite` (
  `fk_club` int(11) NOT NULL,
  `fk_activite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-10-16 10:59:44', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-25 13:28:53', NULL),
(2, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 05:48:36', NULL),
(3, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/module_generator/delete/12', 'Delete data Activités at Module Generator', '', 1, '2018-10-26 06:00:33', NULL),
(4, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/Image/edit-save/1', 'Update data  at Image', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nom</td><td>background</td><td>Fond de page d\'accueil</td></tr><tr><td>blob_img</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-26 06:19:27', NULL),
(5, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/Image/edit-save/2', 'Update data  at Image', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nom</td><td>logo appli</td><td>logo de l\'application</td></tr><tr><td>blob_img</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-26 06:19:46', NULL),
(6, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/Image/edit-save/3', 'Update data  at Image', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nom</td><td>anneaux</td><td>logo comité national</td></tr><tr><td>blob_img</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-26 06:20:24', NULL),
(7, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/Image/edit-save/4', 'Update data  at Image', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nom</td><td>logo prefet</td><td>logo république Française</td></tr><tr><td>blob_img</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-26 06:20:54', NULL),
(8, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 06:24:05', NULL),
(9, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 06:24:32', NULL),
(10, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 06:25:21', NULL),
(11, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 06:25:35', NULL),
(12, '172.20.10.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 'http://172.20.10.2/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address 172.20.10.1', '', 1, '2018-10-26 06:29:39', NULL),
(13, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/users/add-save', 'Add New Data Dalila at Users Management', '', 1, '2018-10-26 06:44:40', NULL),
(14, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/users/add-save', 'Add New Data Utilisateurs at Users Management', '', 1, '2018-10-26 06:45:09', NULL),
(15, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 06:45:19', NULL),
(16, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address ::1', '', 2, '2018-10-26 06:45:28', NULL),
(17, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'test@test.com logout', '', 2, '2018-10-26 06:45:36', NULL),
(18, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 06:45:45', NULL),
(19, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/add-save', 'Add New Data Dalila at Menu Management', '', 1, '2018-10-26 06:46:27', NULL),
(20, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/delete/9', 'Delete data Dalila at Menu Management', '', 1, '2018-10-26 06:46:34', NULL),
(21, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/2', 'Update data Activités at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-26 06:46:53', NULL),
(22, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/3', 'Update data Club at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:47:06', NULL),
(23, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/4', 'Update data Catégories at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:47:20', NULL),
(24, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/5', 'Update data Démarches at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:47:27', NULL),
(25, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/6', 'Update data Réseaux at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:47:38', NULL),
(26, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/7', 'Update data Publics at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:47:46', NULL),
(27, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/8', 'Update data Image at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:47:56', NULL),
(28, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 06:48:12', NULL),
(29, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address ::1', '', 2, '2018-10-26 06:48:28', NULL),
(30, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:28', NULL),
(31, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:28', NULL),
(32, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:28', NULL),
(33, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:28', NULL),
(34, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:28', NULL),
(35, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(36, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(37, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(38, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(39, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(40, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(41, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(42, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(43, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(44, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(45, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(46, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(47, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(48, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:29', NULL),
(49, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:33', NULL),
(50, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:33', NULL),
(51, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:33', NULL),
(52, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:33', NULL),
(53, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:33', NULL),
(54, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:33', NULL),
(55, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(56, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(57, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(58, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(59, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(60, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(61, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(62, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(63, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(64, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(65, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(66, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(67, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:34', NULL),
(68, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(69, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(70, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(71, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(72, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(73, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(74, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(75, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(76, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(77, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(78, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(79, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(80, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:35', NULL),
(81, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:36', NULL),
(82, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:36', NULL),
(83, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:36', NULL),
(84, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:36', NULL),
(85, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:36', NULL),
(86, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:36', NULL),
(87, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:36', NULL),
(88, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:36', NULL),
(89, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:38', NULL),
(90, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:38', NULL),
(91, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:38', NULL),
(92, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:38', NULL),
(93, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:38', NULL),
(94, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:38', NULL),
(95, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(96, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(97, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(98, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(99, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(100, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(101, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(102, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(103, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(104, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(105, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(106, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:39', NULL),
(107, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:40', NULL),
(108, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:40', NULL),
(109, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:44', NULL),
(110, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:44', NULL),
(111, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:44', NULL),
(112, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:44', NULL),
(113, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:44', NULL),
(114, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(115, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(116, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(117, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(118, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(119, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(120, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(121, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(122, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(123, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(124, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(125, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(126, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:45', NULL),
(127, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(128, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(129, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(130, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(131, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(132, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(133, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(134, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(135, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(136, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(137, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(138, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:46', NULL),
(139, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(140, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(141, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(142, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(143, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(144, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(145, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(146, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(147, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(148, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:47', NULL),
(149, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:52', NULL),
(150, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:52', NULL),
(151, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(152, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(153, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(154, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(155, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(156, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(157, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(158, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(159, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(160, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(161, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(162, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:53', NULL),
(163, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:54', NULL),
(164, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:54', NULL),
(165, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:54', NULL),
(166, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:54', NULL),
(167, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:48:54', NULL),
(168, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'test@test.com logout', '', 2, '2018-10-26 06:49:07', NULL),
(169, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 06:49:19', NULL),
(170, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 06:49:23', NULL),
(171, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address ::1', '', 2, '2018-10-26 06:49:31', NULL),
(172, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:31', NULL),
(173, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(174, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(175, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(176, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(177, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(178, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(179, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(180, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(181, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(182, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(183, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(184, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(185, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:32', NULL),
(186, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:33', NULL),
(187, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:33', NULL),
(188, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:33', NULL),
(189, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:33', NULL),
(190, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:33', NULL),
(191, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:34', NULL),
(192, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:34', NULL),
(193, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:34', NULL),
(194, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:34', NULL),
(195, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:34', NULL),
(196, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:34', NULL),
(197, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(198, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(199, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(200, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(201, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(202, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(203, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(204, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(205, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(206, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(207, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(208, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(209, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:35', NULL),
(210, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:49:36', NULL),
(211, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'test@test.com logout', '', 2, '2018-10-26 06:49:43', NULL),
(212, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'uti@uti.com login with IP Address ::1', '', 3, '2018-10-26 06:49:52', NULL),
(213, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:52', NULL),
(214, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:52', NULL),
(215, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:52', NULL),
(216, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:52', NULL),
(217, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:52', NULL),
(218, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:52', NULL),
(219, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:52', NULL),
(220, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:52', NULL),
(221, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(222, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(223, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(224, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(225, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(226, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(227, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(228, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(229, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(230, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(231, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:53', NULL),
(232, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:56', NULL),
(233, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:56', NULL),
(234, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:56', NULL),
(235, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:56', NULL),
(236, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:56', NULL),
(237, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:49:56', NULL),
(238, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management', 'Try view the data :name at Menu Management', '', 3, '2018-10-26 06:50:02', NULL),
(239, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:02', NULL),
(240, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:02', NULL),
(241, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:02', NULL),
(242, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:02', NULL),
(243, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:02', NULL),
(244, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:02', NULL),
(245, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:02', NULL),
(246, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:02', NULL),
(247, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(248, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(249, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(250, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(251, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(252, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(253, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(254, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(255, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(256, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(257, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:03', NULL),
(258, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(259, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(260, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(261, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(262, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(263, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(264, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(265, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(266, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(267, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(268, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:04', NULL),
(269, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(270, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(271, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(272, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(273, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(274, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(275, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(276, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(277, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:05', NULL),
(278, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:08', NULL),
(279, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:08', NULL),
(280, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:08', NULL),
(281, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:08', NULL),
(282, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(283, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(284, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(285, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(286, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(287, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(288, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(289, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(290, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(291, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(292, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(293, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:09', NULL),
(294, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(295, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(296, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(297, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(298, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(299, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(300, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(301, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(302, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(303, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(304, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(305, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:10', NULL),
(306, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:11', NULL),
(307, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:11', NULL),
(308, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:50:11', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address 127.0.0.1', '', 2, '2018-10-26 06:50:54', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:54', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:54', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:54', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:54', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:55', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:56', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:56', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:56', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:50:56', NULL),
(330, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(331, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(332, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(333, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(334, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(335, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(336, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(337, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(338, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(339, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(340, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(341, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:05', NULL),
(342, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(343, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(344, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(345, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(346, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(347, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(348, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(349, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(350, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(351, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(352, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(353, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:06', NULL),
(354, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(355, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(356, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(357, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(358, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(359, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(360, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(361, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(362, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:51:07', NULL),
(363, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'uti@uti.com logout', '', 3, '2018-10-26 06:51:13', NULL),
(364, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 06:51:37', NULL),
(365, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/2', 'Update data Activités at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-26 06:51:57', NULL),
(366, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/3', 'Update data Club at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:52:02', NULL),
(367, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/4', 'Update data Catégories at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:52:08', NULL),
(368, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/5', 'Update data Démarches at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-10-26 06:52:14', NULL),
(369, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 06:52:21', NULL),
(370, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address ::1', '', 2, '2018-10-26 06:52:33', NULL),
(371, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(372, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(373, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(374, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(375, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(376, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(377, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(378, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(379, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(380, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(381, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:33', NULL),
(382, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:34', NULL),
(383, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:34', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(384, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:34', NULL),
(385, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:34', NULL),
(386, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:34', NULL),
(387, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:34', NULL),
(388, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:34', NULL),
(389, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:52:34', NULL),
(390, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 06:53:17', NULL),
(391, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 06:53:23', NULL),
(392, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address ::1', '', 2, '2018-10-26 06:53:41', NULL),
(393, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:41', NULL),
(394, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:41', NULL),
(395, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:41', NULL),
(396, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(397, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(398, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(399, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(400, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(401, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(402, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(403, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(404, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(405, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(406, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:42', NULL),
(407, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:43', NULL),
(408, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:43', NULL),
(409, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:43', NULL),
(410, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:43', NULL),
(411, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:43', NULL),
(412, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:51', NULL),
(413, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:51', NULL),
(414, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:51', NULL),
(415, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:51', NULL),
(416, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:51', NULL),
(417, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:51', NULL),
(418, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:51', NULL),
(419, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:52', NULL),
(420, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:52', NULL),
(421, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:52', NULL),
(422, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:52', NULL),
(423, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:52', NULL),
(424, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:52', NULL),
(425, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:52', NULL),
(426, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:52', NULL),
(427, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(428, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(429, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(430, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(431, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(432, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(433, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(434, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(435, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:53', NULL),
(436, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(437, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(438, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(439, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(440, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(441, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(442, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(443, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(444, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(445, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(446, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(447, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:54', NULL),
(448, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(449, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(450, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(451, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(452, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(453, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(454, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(455, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(456, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(457, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(458, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(459, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:55', NULL),
(460, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(461, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(462, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(463, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(464, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(465, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(466, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(467, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(468, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:53:56', NULL),
(469, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'test@test.com logout', '', 2, '2018-10-26 06:54:03', NULL),
(470, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'uti@uti.com login with IP Address ::1', '', 3, '2018-10-26 06:54:12', NULL),
(471, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(472, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(473, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(474, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(475, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(476, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(477, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(478, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(479, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(480, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(481, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(482, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:13', NULL),
(483, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:14', NULL),
(484, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:14', NULL),
(485, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:14', NULL),
(486, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:14', NULL),
(487, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:14', NULL),
(488, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:14', NULL),
(489, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:14', NULL),
(490, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:16', NULL),
(491, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:16', NULL),
(492, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:16', NULL),
(493, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:16', NULL),
(494, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:16', NULL),
(495, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:16', NULL),
(496, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:17', NULL),
(497, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:17', NULL),
(498, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(499, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(500, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(501, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(502, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(503, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(504, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(505, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(506, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(507, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(508, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:50', NULL),
(509, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(510, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(511, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(512, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(513, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(514, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(515, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(516, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(517, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(518, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(519, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(520, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:51', NULL),
(521, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(522, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(523, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(524, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(525, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(526, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(527, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(528, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(529, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(530, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(531, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:52', NULL),
(532, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:53', NULL),
(533, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:53', NULL),
(534, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:53', NULL),
(535, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:53', NULL),
(536, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:53', NULL),
(537, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:53', NULL),
(538, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(539, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(540, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(541, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(542, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(543, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(544, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(545, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(546, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(547, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(548, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:55', NULL),
(549, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(550, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(551, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(552, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(553, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(554, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(555, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(556, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(557, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:54:56', NULL),
(558, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:02', NULL),
(559, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:02', NULL),
(560, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:03', NULL),
(561, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:03', NULL),
(562, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:03', NULL),
(563, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:03', NULL),
(564, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:03', NULL),
(565, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:03', NULL),
(566, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(567, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(568, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(569, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(570, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(571, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(572, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(573, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(574, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(575, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(576, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(577, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(578, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:04', NULL),
(579, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(580, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(581, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(582, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(583, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(584, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(585, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(586, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(587, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(588, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(589, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(590, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:05', NULL),
(591, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(592, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(593, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(594, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(595, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(596, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(597, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(598, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(599, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:06', NULL),
(600, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:07', NULL),
(601, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:07', NULL),
(602, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:07', NULL),
(603, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:07', NULL),
(604, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:07', NULL),
(605, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:07', NULL),
(606, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:07', NULL),
(607, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:07', NULL),
(608, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(609, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(610, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(611, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(612, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(613, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(614, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(615, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(616, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(617, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(618, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(619, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:08', NULL),
(620, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:16', NULL),
(621, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:16', NULL),
(622, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:16', NULL),
(623, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:16', NULL),
(624, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:16', NULL),
(625, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:16', NULL),
(626, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:16', NULL),
(627, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(628, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(629, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(630, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(631, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(632, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(633, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(634, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(635, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(636, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(637, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(638, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:17', NULL),
(639, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(640, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(641, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(642, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(643, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(644, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(645, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(646, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(647, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(648, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(649, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(650, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:18', NULL),
(651, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:19', NULL),
(652, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:19', NULL),
(653, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:19', NULL),
(654, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:19', NULL),
(655, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:19', NULL),
(656, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:19', NULL),
(657, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:19', NULL),
(658, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:19', NULL),
(659, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:20', NULL),
(660, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:23', NULL),
(661, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:23', NULL),
(662, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:23', NULL),
(663, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(664, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(665, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(666, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(667, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(668, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(669, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(670, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(671, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(672, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:24', NULL),
(673, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:25', NULL),
(674, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:25', NULL),
(675, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:25', NULL),
(676, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:25', NULL),
(677, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:25', NULL),
(678, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:55:25', NULL),
(679, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'test@test.com login with IP Address 127.0.0.1', '', 2, '2018-10-26 06:56:18', NULL),
(680, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(681, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(682, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(683, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(684, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(685, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(686, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(687, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(688, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(689, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:18', NULL),
(690, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(691, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(692, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(693, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(694, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(695, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(696, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(697, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(698, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:56:19', NULL),
(699, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:04', NULL),
(700, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:04', NULL),
(701, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:04', NULL),
(702, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:04', NULL),
(703, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(704, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(705, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(706, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(707, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(708, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(709, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(710, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(711, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(712, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(713, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(714, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(715, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:05', NULL),
(716, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(717, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(718, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(719, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(720, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(721, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(722, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(723, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(724, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(725, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(726, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(727, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:06', NULL),
(728, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(729, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(730, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(731, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(732, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(733, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(734, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(735, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(736, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(737, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(738, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://127.0.0.1:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-26 06:57:07', NULL),
(739, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(740, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(741, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(742, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(743, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(744, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(745, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(746, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(747, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:24', NULL),
(748, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(749, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(750, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(751, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(752, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(753, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(754, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(755, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(756, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(757, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(758, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:25', NULL),
(759, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(760, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(761, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(762, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(763, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(764, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(765, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(766, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(767, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(768, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(769, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(770, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:26', NULL),
(771, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:27', NULL),
(772, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:27', NULL),
(773, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:27', NULL),
(774, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:27', NULL),
(775, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 06:57:27', NULL),
(776, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'uti@uti.com logout', '', 3, '2018-10-26 06:57:35', NULL),
(777, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 06:57:47', NULL),
(778, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 07:29:32', NULL),
(779, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address ::1', '', 2, '2018-10-26 07:29:39', NULL),
(780, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:39', NULL),
(781, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:39', NULL),
(782, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:39', NULL),
(783, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:39', NULL),
(784, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:39', NULL),
(785, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:39', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(786, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(787, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(788, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(789, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(790, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(791, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(792, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(793, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(794, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(795, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(796, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(797, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(798, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:40', NULL),
(799, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:45', NULL),
(800, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:45', NULL),
(801, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:45', NULL),
(802, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:45', NULL),
(803, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:45', NULL),
(804, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:45', NULL),
(805, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:45', NULL),
(806, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:29:45', NULL),
(807, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'test@test.com logout', '', 2, '2018-10-26 07:29:55', NULL),
(808, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 07:30:06', NULL),
(809, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 07:31:02', NULL),
(810, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'uti@uti.com login with IP Address ::1', '', 3, '2018-10-26 07:31:16', NULL),
(811, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:16', NULL),
(812, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:16', NULL),
(813, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:16', NULL),
(814, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(815, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(816, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(817, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(818, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(819, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(820, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(821, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(822, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(823, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(824, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:17', NULL),
(825, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:18', NULL),
(826, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:18', NULL),
(827, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:18', NULL),
(828, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:18', NULL),
(829, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:18', NULL),
(830, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(831, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(832, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(833, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(834, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(835, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(836, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(837, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(838, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(839, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:20', NULL),
(840, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:21', NULL),
(841, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:21', NULL),
(842, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:21', NULL),
(843, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:21', NULL),
(844, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 3, '2018-10-26 07:31:21', NULL),
(845, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'uti@uti.com logout', '', 3, '2018-10-26 07:31:33', NULL),
(846, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 07:31:42', NULL),
(847, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 07:31:51', NULL),
(848, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address ::1', '', 2, '2018-10-26 07:31:59', NULL),
(849, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:31:59', NULL),
(850, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:31:59', NULL),
(851, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:31:59', NULL),
(852, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:31:59', NULL),
(853, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:31:59', NULL),
(854, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:31:59', NULL),
(855, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:31:59', NULL),
(856, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:31:59', NULL),
(857, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(858, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(859, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(860, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(861, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(862, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(863, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(864, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(865, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(866, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(867, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:00', NULL),
(868, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:02', NULL),
(869, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:02', NULL),
(870, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:02', NULL),
(871, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(872, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(873, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(874, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(875, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(876, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(877, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(878, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(879, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(880, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(881, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:03', NULL),
(882, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:04', NULL),
(883, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:04', NULL),
(884, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:04', NULL),
(885, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:04', NULL),
(886, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:04', NULL),
(887, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:32:04', NULL),
(888, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management', 'Try view the data :name at Menu Management', '', 2, '2018-10-26 07:35:32', NULL),
(889, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(890, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(891, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(892, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(893, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(894, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(895, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(896, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(897, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(898, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(899, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:32', NULL),
(900, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(901, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(902, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(903, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(904, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(905, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(906, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(907, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(908, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(909, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(910, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(911, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:33', NULL),
(912, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(913, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(914, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(915, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(916, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(917, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(918, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(919, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(920, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(921, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(922, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:34', NULL),
(923, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:35', NULL),
(924, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:35', NULL),
(925, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:35', NULL),
(926, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:35', NULL),
(927, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:35', NULL),
(928, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:47', NULL),
(929, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:47', NULL),
(930, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:47', NULL),
(931, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(932, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(933, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(934, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(935, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(936, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(937, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(938, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(939, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(940, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(941, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(942, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:48', NULL),
(943, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(944, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(945, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(946, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(947, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(948, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(949, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(950, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(951, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(952, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(953, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(954, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:49', NULL),
(955, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(956, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(957, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(958, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(959, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(960, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(961, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(962, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(963, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(964, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(965, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(966, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:50', NULL),
(967, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:51', NULL),
(968, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(969, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(970, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(971, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(972, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(973, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(974, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(975, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(976, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(977, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:56', NULL),
(978, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(979, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(980, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(981, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(982, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(983, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(984, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(985, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(986, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(987, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:35:57', NULL),
(988, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address ::1', '', 2, '2018-10-26 07:36:37', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(989, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:37', NULL),
(990, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:37', NULL),
(991, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:37', NULL),
(992, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:37', NULL),
(993, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:37', NULL),
(994, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:37', NULL),
(995, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:37', NULL),
(996, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:37', NULL),
(997, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(998, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(999, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1000, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1001, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1002, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1003, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1004, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1005, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1006, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1007, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:38', NULL),
(1008, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:47', NULL),
(1009, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:47', NULL),
(1010, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:47', NULL),
(1011, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:47', NULL),
(1012, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:47', NULL),
(1013, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:47', NULL),
(1014, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1015, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1016, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1017, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1018, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1019, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1020, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1021, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1022, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1023, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1024, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:48', NULL),
(1025, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1026, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1027, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1028, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1029, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1030, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1031, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1032, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1033, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:36:49', NULL),
(1034, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:13', NULL),
(1035, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:13', NULL),
(1036, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:13', NULL),
(1037, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:13', NULL),
(1038, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1039, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1040, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1041, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1042, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1043, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1044, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1045, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1046, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1047, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1048, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1049, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:14', NULL),
(1050, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1051, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1052, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1053, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1054, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1055, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1056, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1057, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1058, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1059, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1060, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1061, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:15', NULL),
(1062, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:16', NULL),
(1063, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:16', NULL),
(1064, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:16', NULL),
(1065, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:16', NULL),
(1066, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:16', NULL),
(1067, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:16', NULL),
(1068, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:16', NULL),
(1069, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:22', NULL),
(1070, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:22', NULL),
(1071, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:22', NULL),
(1072, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:22', NULL),
(1073, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:22', NULL),
(1074, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:22', NULL),
(1075, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:22', NULL),
(1076, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:22', NULL),
(1077, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1078, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1079, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1080, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1081, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1082, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1083, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1084, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1085, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1086, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:23', NULL),
(1087, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1088, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1089, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1090, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1091, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1092, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1093, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1094, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1095, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:24', NULL),
(1096, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:25', NULL),
(1097, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:25', NULL),
(1098, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:25', NULL),
(1099, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:25', NULL),
(1100, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:25', NULL),
(1101, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:25', NULL),
(1102, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:25', NULL),
(1103, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:25', NULL),
(1104, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1105, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1106, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1107, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1108, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1109, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1110, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1111, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1112, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1113, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1114, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1115, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:26', NULL),
(1116, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1117, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1118, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1119, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1120, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1121, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1122, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1123, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1124, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1125, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1126, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1127, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:27', NULL),
(1128, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:28', NULL),
(1129, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:28', NULL),
(1130, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:28', NULL),
(1131, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:38:28', NULL),
(1132, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'test@test.com logout', '', 2, '2018-10-26 07:38:36', NULL),
(1133, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 07:38:48', NULL),
(1134, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:00', NULL),
(1135, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:00', NULL),
(1136, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:00', NULL),
(1137, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:00', NULL),
(1138, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:00', NULL),
(1139, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:00', NULL),
(1140, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:00', NULL),
(1141, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1142, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1143, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1144, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1145, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1146, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1147, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1148, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1149, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1150, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1151, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:01', NULL),
(1152, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:02', NULL),
(1153, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:02', NULL),
(1154, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin', 'Try view the data :name at ', '', 2, '2018-10-26 07:39:02', NULL),
(1155, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/2', 'Update data Activités at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminActivite13ControllerGetIndex</td><td>AdminActivite13Controller</td></tr></tbody></table>', 1, '2018-10-26 07:46:56', NULL),
(1156, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/menu_management/edit-save/2', 'Update data Activités at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminActivite13Controller</td><td>AdminActivite13ControllerGetIndex</td></tr></tbody></table>', 1, '2018-10-26 07:49:06', NULL),
(1157, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-26 07:49:48', NULL),
(1158, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-10-26 07:50:00', NULL),
(1159, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'test@test.com logout', '', 2, '2018-10-26 07:50:25', NULL),
(1160, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'uti@uti.com login with IP Address 127.0.0.1', '', 3, '2018-10-26 07:50:35', NULL),
(1161, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin/logout', 'uti@uti.com logout', '', 3, '2018-10-26 07:51:42', NULL),
(1162, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost/SportSante2/sport_sante/public/admin/login', 'test@test.com login with IP Address 127.0.0.1', '', 2, '2018-10-26 07:51:54', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(2, 'Activités', 'Route', 'AdminActivite13ControllerGetIndex', 'normal', 'fa fa-trophy', 0, 1, 0, 1, 1, '2018-10-26 06:01:17', '2018-10-26 07:49:06'),
(3, 'Club', 'Route', 'AdminClubControllerGetIndex', 'normal', 'fa fa-empire', 0, 1, 0, 1, 2, '2018-10-26 06:05:25', '2018-10-26 06:52:02'),
(4, 'Catégories', 'Route', 'AdminCategorieControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 3, '2018-10-26 06:09:20', '2018-10-26 06:52:08'),
(5, 'Démarches', 'Route', 'AdminDemarcheControllerGetIndex', 'normal', 'fa fa-child', 0, 1, 0, 1, 4, '2018-10-26 06:14:32', '2018-10-26 06:52:13'),
(6, 'Réseaux', 'Route', 'AdminReseauxControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 5, '2018-10-26 06:16:03', '2018-10-26 06:47:37'),
(7, 'Publics', 'Route', 'AdminPublicsControllerGetIndex', 'normal', 'fa fa-user-plus', 0, 1, 0, 1, 6, '2018-10-26 06:17:13', '2018-10-26 06:47:46'),
(8, 'Image', 'Route', 'AdminImageControllerGetIndex', 'normal', 'fa fa-image', 0, 1, 0, 1, 7, '2018-10-26 06:18:48', '2018-10-26 06:47:55');

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(9, 9, 2),
(22, 6, 2),
(23, 6, 1),
(24, 6, 3),
(25, 7, 2),
(26, 7, 1),
(27, 7, 3),
(28, 8, 2),
(29, 8, 1),
(30, 8, 3),
(34, 3, 2),
(35, 3, 1),
(36, 3, 3),
(37, 4, 2),
(38, 4, 1),
(39, 4, 3),
(40, 5, 2),
(41, 5, 1),
(42, 5, 3),
(46, 2, 2),
(47, 2, 1),
(48, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-10-16 10:59:44', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-10-16 10:59:44', NULL, NULL),
(12, 'Activités', 'fa fa-trophy', 'Activite', 'Activite', 'AdminActiviteController', 0, 0, '2018-10-26 05:54:56', NULL, '2018-10-26 06:00:33'),
(13, 'Activités', 'fa fa-trophy', 'Activite13', 'Activite', 'AdminActivite13Controller', 0, 0, '2018-10-26 06:01:16', NULL, NULL),
(14, 'Club', 'fa fa-empire', 'Club', 'Club', 'AdminClubController', 0, 0, '2018-10-26 06:05:25', NULL, NULL),
(15, 'Catégories', 'fa fa-book', 'Categorie', 'Categorie', 'AdminCategorieController', 0, 0, '2018-10-26 06:09:20', NULL, NULL),
(16, 'Démarches', 'fa fa-child', 'demarche', 'demarche', 'AdminDemarcheController', 0, 0, '2018-10-26 06:14:32', NULL, NULL),
(17, 'Réseaux', 'fa fa-users', 'reseaux', 'reseaux', 'AdminReseauxController', 0, 0, '2018-10-26 06:16:03', NULL, NULL),
(18, 'Publics', 'fa fa-user-plus', 'publics', 'publics', 'AdminPublicsController', 0, 0, '2018-10-26 06:17:13', NULL, NULL),
(19, 'Image', 'fa fa-image', 'Image', 'Image', 'AdminImageController', 0, 0, '2018-10-26 06:18:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2018-10-16 10:59:44', NULL),
(2, 'Admin', 0, 'skin-green', NULL, NULL),
(3, 'User', 0, 'skin-purple', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-10-16 10:59:44', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-10-16 10:59:44', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-10-16 10:59:44', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-10-16 10:59:44', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-10-16 10:59:44', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-10-16 10:59:44', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-10-16 10:59:44', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-10-16 10:59:44', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-10-16 10:59:44', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-10-16 10:59:44', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-10-16 10:59:44', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(21, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(22, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(23, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(24, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(25, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(26, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(27, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
(28, 1, 1, 1, 0, 0, 3, 13, NULL, NULL),
(29, 1, 1, 1, 0, 0, 3, 15, NULL, NULL),
(30, 1, 1, 1, 0, 0, 3, 14, NULL, NULL),
(31, 1, 1, 1, 0, 0, 3, 16, NULL, NULL),
(32, 1, 1, 1, 0, 0, 3, 19, NULL, NULL),
(33, 1, 1, 1, 0, 0, 3, 18, NULL, NULL),
(34, 1, 1, 1, 0, 0, 3, 17, NULL, NULL),
(35, 1, 0, 0, 0, 0, 3, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-10-16 10:59:44', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-10-16 10:59:44', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2018-10/9cc0f0a33919ec2efc89f7d180a94945.jpg', 'upload_image', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-10-16 10:59:44', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Sport Santé', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-10-16 10:59:44', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2018-10/b63ddaa04e590e475fd10207b4afc1d0.png', 'upload_image', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2018-10/e630f50f3409b96fcffb3fdc4755f766.png', 'upload_image', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$6rwTIrnUSZhuskJ2Wmp1JuodO/Z8vkJLjGQ4j0tUyt8dAhsNvVyYq', 1, '2018-10-16 10:59:44', NULL, 'Active'),
(2, 'Dalila', 'uploads/1/2018-10/01.jpg', 'test@test.com', '$2y$10$kJwykMfZmiMXjOHdQkLixOhKauK8UK4kB7PJpE0N8jz0qEovVl9Yu', 2, '2018-10-26 06:44:39', NULL, NULL),
(3, 'Utilisateurs', 'uploads/1/2018-10/logo_club_actif.png', 'uti@uti.com', '$2y$10$vUratPr4oeo8LjXUalfj1O/4SKz9bhUI3IpUa8TfrRIA4YT2JxU36', 3, '2018-10-26 06:45:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `demarche`
--

CREATE TABLE `demarche` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Image`
--

CREATE TABLE `Image` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `taille` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text,
  `blob_img` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Image`
--

INSERT INTO `Image` (`id`, `nom`, `taille`, `type`, `description`, `blob_img`) VALUES
(1, 'Fond de page d\'accueil', '6ko', 'jpg', '\'image/01.jpg\'', NULL),
(2, 'logo de l\'application', '6ko', 'png', 'image/1.png', NULL),
(3, 'logo comité national', '6ko', 'png', 'image/anneaux.png', NULL),
(4, 'logo république Française', '6ko', 'png', 'image/logo-prefet-2018.png', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2018_10_24_125256_create_publics_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `propose`
--

CREATE TABLE `propose` (
  `id` int(11) NOT NULL,
  `id_Activite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `publics`
--

CREATE TABLE `publics` (
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `publics`
--

INSERT INTO `publics` (`nom`, `id`) VALUES
('Jeune', 1),
('Adulte', 2),
('Senior', 3),
('Famille', 4),
('Tous äges', 5),
('Pratique loisir et bien-ëtre', 6),
('Handicap', 7),
('Sédentaire et soufrant d\'une pathologie', 8),
('Fragile et isolé', 9),
('Toutes situations', 10);

-- --------------------------------------------------------

--
-- Structure de la table `reseaux`
--

CREATE TABLE `reseaux` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Activite`
--
ALTER TABLE `Activite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activite_publics`
--
ALTER TABLE `activite_publics`
  ADD PRIMARY KEY (`fk_activite`,`fk_publics`),
  ADD KEY `fk_activite` (`fk_activite`),
  ADD KEY `fk_publics` (`fk_publics`);

--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie_activite`
--
ALTER TABLE `categorie_activite`
  ADD PRIMARY KEY (`fk_categorie`,`fk_activite`),
  ADD KEY `fk_activite` (`fk_activite`),
  ADD KEY `fk_categorie` (`fk_categorie`);

--
-- Index pour la table `Club`
--
ALTER TABLE `Club`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Club_Image_FK` (`id_Image`);

--
-- Index pour la table `club_activite`
--
ALTER TABLE `club_activite`
  ADD KEY `fk_club` (`fk_club`),
  ADD KEY `fk_activite` (`fk_activite`);

--
-- Index pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demarche`
--
ALTER TABLE `demarche`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `propose`
--
ALTER TABLE `propose`
  ADD PRIMARY KEY (`id`,`id_Activite`),
  ADD KEY `propose_Activite0_FK` (`id_Activite`);

--
-- Index pour la table `publics`
--
ALTER TABLE `publics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reseaux`
--
ALTER TABLE `reseaux`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Activite`
--
ALTER TABLE `Activite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Club`
--
ALTER TABLE `Club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1163;
--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `demarche`
--
ALTER TABLE `demarche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Image`
--
ALTER TABLE `Image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `publics`
--
ALTER TABLE `publics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `reseaux`
--
ALTER TABLE `reseaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `activite_publics`
--
ALTER TABLE `activite_publics`
  ADD CONSTRAINT `activite_publics_ibfk_1` FOREIGN KEY (`fk_activite`) REFERENCES `Activite` (`id`),
  ADD CONSTRAINT `activite_publics_ibfk_2` FOREIGN KEY (`fk_publics`) REFERENCES `publics` (`id`);

--
-- Contraintes pour la table `categorie_activite`
--
ALTER TABLE `categorie_activite`
  ADD CONSTRAINT `categorie_activite_ibfk_1` FOREIGN KEY (`fk_activite`) REFERENCES `Activite` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categorie_activite_ibfk_2` FOREIGN KEY (`fk_categorie`) REFERENCES `Categorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Club`
--
ALTER TABLE `Club`
  ADD CONSTRAINT `Club_Image_FK` FOREIGN KEY (`id_Image`) REFERENCES `Image` (`id`);

--
-- Contraintes pour la table `club_activite`
--
ALTER TABLE `club_activite`
  ADD CONSTRAINT `club_activite_ibfk_1` FOREIGN KEY (`fk_activite`) REFERENCES `Activite` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `club_activite_ibfk_2` FOREIGN KEY (`fk_club`) REFERENCES `Club` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `propose`
--
ALTER TABLE `propose`
  ADD CONSTRAINT `propose_Activite0_FK` FOREIGN KEY (`id_Activite`) REFERENCES `Activite` (`id`),
  ADD CONSTRAINT `propose_Club_FK` FOREIGN KEY (`id`) REFERENCES `Club` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
