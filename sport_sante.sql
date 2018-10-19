-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 16 Octobre 2018 à 15:00
-- Version du serveur :  5.7.23-0ubuntu0.18.04.1
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
  `nom` varchar(50) NOT NULL,
  `public` int(11) NOT NULL
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
  `id_Image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Club`
--

INSERT INTO `Club` (`id`, `nom`, `descriptif`, `adresse`, `contact`, `telephone`, `mail`, `site_web`, `label`, `id_Image`) VALUES
(5, 'Activité Physique Adaptée de Gymnastique Volontaire de Lectoure - APAGV', 'association déclarée est en activité depuis 8 ans.\r\nSituée à LECTOURE (32700), elle est spécialisée dans le secteur des activités de clubs de sports.', 'La Bourdette 32700 LECTOURE', NULL, NULL, NULL, NULL, 'Niveau de labellisation : 2 - Diversification', NULL),
(6, 'Activités Physiques Adaptées de Gimont - APA', 'Cette gymnastique volontaire propose des activités adaptées en groupe, pour l\'éducation sportive au service de la santé des pratiquants. Une gymnastique douce, conviviale, de proximité, et encadrée par une éducatrice sportive diplômée en activités physiques adaptées.', '85 rue Nationale 32200 GIMONT', 'Jean-Jacques DEMERONT', '06 74 93 81 56', 'apagimont@hotmail.fr', NULL, 'Niveau de labellisation : 2 - Diversification', NULL),
(7, 'Activités Physiques Adaptées de l\'Office Intercommunal du Sport de la Gascogne Toulousaine - OIS', 'L\'Office Intercommunal du Sport est une association qui regroupe toutes les associations sportives de la Communauté de Communes de la Gascogne Toulousaine. Son but est de favoriser le développement du sport pour tous sur le territoire de la Communauté de Communes de la Gascogne Toulousaine. Il assure donc la promotion du sport, fait respecter l\'équité du traitement des clubs et facilite le travail des associations.', 'Avenue du Bataillon de l\'Armagnac 32600 L\'ISLE JOURDAIN', 'Romain AUZEMERY', '05 62 62 67 43', 'oisgt.romain-auzemery@orange.fr', 'http://www.sport-gascognetoulousaine.fr', 'Niveau de labellisation : 3 - Exemplarité', NULL),
(8, 'Association Sportive de Boxe Éducative et Loisir Mixte 32 - ASBLM', 'L\'association sportive de boxe éducative et de loisirs mixtes 32 (ASBLM 32) a pour objet la pratique de :\r\n\r\nla boxe loisir mixte, pour jeunes et adultes, filles comme garçons, de proposer des séances d’entraînement attrayantes afin d’établir entre tous les membres du club des relations fortes et constructives, de partager une aventure humaine peu commune.\r\n\r\nL’association est affiliée aux fédérations sportives nationales régissant les sports qu’elle pratique. Elle a choisit aussi d’adhérer à la Fédération Française du Sport Adapté.', '3 route de Sirac 32430 SAINT-CRICQ', 'Sahel KOUIDER', '06 61 58 04 50', 'kuid31@yahoo.fr', NULL, '1 - Lancement', NULL),
(9, 'Association Sportive Fleurantine - ASF Rugby Fleurance', 'L\'Association Sportive Fleurantine est un club de rugby à XV français situé à Fleurance (Gers). Il évolue actuellement en Fédérale 1.', 'BP 54 (bureaux situés au Stade Marius Lacoste) 32500 FLEURANCE Cedex', NULL, '05 62 06 29 23', 'asfrugby@wanadoo.fr', 'http://www.asf-rugby.fr', '1 - Lancement', NULL),
(10, 'Auch Football', 'AUCH FOOTBALL, Association déclarée, a débuté son activité en juillet 1992.\r\n\r\nAUCH FOOTBALL évolue sur le secteur d\'activité : Activités sportives, récréatives et de loisirs', 'Complexe Patrice Brocas\r\nAvenue des Pyrénées\r\n32000 AUCH', 'Romain DELACHOUX', '05 62 05 44 85', 'contact@auchfootball.fr\r\n\r\nromain.delachoux@gmail.com', 'http://www.auchfootball.com/', '2 -Diversification', NULL),
(11, 'Au Jardin de la Forme', 'Au jardin de la Forme, 5 animateurs diplomés proposent 20 séances de gym d\'entretien chaque semaine à l\'Isle Jourdain . MATIN, MIDI et SOIREE, les séances sont adapltées à vos capacités, cours variés,  dynamiques ou plus doux', 'Mairie de L\'Isle Jourdain 32600 L\'ISLE JOURDAIN', NULL, NULL, NULL, 'http://www.sport-gascognetoulousaine.fr', '2 -Diversification', NULL),
(12, 'Cercle des Nageurs Auscitains - CNA', 'Le Cercle des Nageurs a été créé en 1946 bien avant que n\'apparaisse le bassin 25m x 9 m en 1965.\r\n\r\nLe CN Auch est un club novateur puisque c\'est le premier qui propose une section \"bébés nageurs\" en 1978 qui perdure aujourd\'hui.\r\n\r\nDans les années 80 le club s\'ouvre à plusieurs pratiques (naissance de l\'école de natation, de la section adultes...)\r\n\r\nLa création du bassin actuel 25m x 15m en 1985 renforce les sections existantes et permet d\'ouvrir de nouveaux groupes comme la naissance de la section sportive avec le collège Mathalin en 1995.', 'Résidence du Moulias 32000 AUCH', 'Grégory BOIVIN', '05 62 05 67 42', 'cna3@wanadoo.fr\r\n\r\ngregory.boivin@free.fr', 'http://cnauch.fr', '1 - Lancement', NULL),
(13, 'Cercle Pongiste Auch - CPA', 'Le Cercle pongiste auscitain ou CP Auch est un club français de tennis de table basé à Auch, dans le département du Gers.', 'Salle du camping\r\nRue du Général De Gaulle\r\n32000 AUCH', 'Bruno CARVALHO', '06 84 30 03 35', 'cpauch@free.fr\r\n\r\nb_runo2004@hotmail.fr', 'http://www.cpauch.com/', '2 -Diversification', NULL),
(14, 'Club des Retraités Sportifs Auscitains - CRSA', 'Notre association est affiliée à la FFRS (Fédération française de la  retraite sportive) et qualifiée pour organiser la pratique d\'activités  physiques adaptée pour les plus de 50 ans. Les animateurs suivent des stages de formation organisés par la  FFRS, agréée par le ministère de la jeunesse et des sports, à l\'issue  desquels leur sont délivrés des brevets fédéraux. ', '36 rue des Canaris 32000 AUCH', 'Jean-Jacques DUMONT\r\n\r\nJacques AROLDI', '05 62 05 35 23', 'ladum@sfr.fr\r\n\r\ncrsa32@orange.fr', 'http://www.crsa32.com', '1 - Lancement', NULL),
(15, 'Comité Départemental d\'Athlétisme - CDA', 'Le sport de l\'athlétisme, sous toutes ses formes.\r\n- Organiser les championnats départementaux.\r\n- Étudier tous les aspects relatifs a la pratique de ce sport dans son département.', '36 rue des Canaris 32000 AUCH', 'Sophie MEDIAMOLE', '06 70 06 13 72', 'comite.dep.athletisme.du.gers@gmail.com\r\n\r\nsophie.mediamole@hotmail.fr', 'http://www.cda32.fr', '2 -Diversification', NULL),
(16, 'Comité Départemental de Bowling et Sport de Quilles', ' Promouvoir, développer et organiser les activités et les disciplines suivantes bowling, Nine pin bowling classic (NBC), Nine pin bowling schere (NBS), quilles St Gall, quilles de 6, quilles au maillet, quilles de 8, quilles de 9, toute autre pratique qui pourrait naître et être reconnue à condition d\'être agréée par l\'assemblée générale de la FFBSQ. représenter tous les licenciés pratiquant le bowling et les sports de quilles et les associations sportives affiliées, participer aux missions', '36 rue des Canaris 32000 AUCH', 'Simon NITARO', '07 70 47 99 10', 'snitaro@geag.org', NULL, '2 -Diversification', NULL),
(17, 'Comité Départemental de Hockey-sur-Gazon du Gers', 'Depuis 10 ans, le Gers est une nouvelle contrée du hockey Français. Sous l\'impulsion de Stéphane MONTECOT et de Christophe GERMAIN, les deux fondateurs de l\'Isle-Jourdain HC, le comité départemental du Gers du hockey a été créé, il y  a 5 ans.', '17 rue de Gascogne 32600 L\'ISLE JOURDAIN', 'Simon NITARO', '07 50 91 04 38', 'contact@cd32.hockey-midi-pyrenees.fr\r\n\r\nsnitaro@geag.org', 'http://cd32.hockey-midi-pyrenees.fr', '2 -Diversification', NULL),
(18, 'Comité Départemental de Rugby', 'COMITE DEPARTEMENTAL RUGBY DU GERS, association déclarée est active depuis 20 ans.\r\nDomiciliée à AUCH (32000), elle est spécialisée dans le secteur des activités de clubs de sports. Son effectif est compris entre 1 et 2 salariés.', '36 rue des Canaris 32000 AUCH', 'Kévin RIBREAU', '05 62 05 48 29', 'rugby.gers@wanadoo.fr', NULL, '2 -Diversification', NULL),
(19, 'Comité Départemental Sport Adapté du Gers - CDSA', 'Organe déconcentré de la Fédération Française du Sport Adapté au niveau départemental, il organise, réglemente et assure la promotion des activités physiques et sportives auprès des personnes en situation de handicap mental, psychique, troubles du comportement et de l\'adaptation.', '14 place du Maréchal Lannes 32000 AUCH', 'Amandine CAPUS', '06 40 41 56 89', 'cdsa32@ffsa.asso.fr\r\n\r\namandine.capus@ffsa.asso.fr', 'cdsa-32.wixsite.com/cdsa32', '2 -Diversification', NULL),
(20, 'Form\'essentielle', 'Formessentielle est une structure associative de gymnastique labellisée SPORT SANTE. Elle a vu le jour en avril 2011, au cœur de la ville d’Auch. Ses activités sont accessibles à tout le monde quelque soit l\'âge (Enfants, Adultes et Seniors) et la condition physique dans le respect des valeurs Sport Santé. \r\nLes cours sont encadrés par un éducateur sportif centré sur la personne grâce à une pédagogie différenciée. Son rôle est d’observer, de corriger, de conseiller et d’informer, il incite à prendre de bonnes habitudes de vie et à gérer son propre capital santé.', '25 Bd Roquelaure 32000 AUCH', 'Danielle Loizon-Dalla Nora', '06 87 01 93 01', 'patricia.lacombe1919@gmail.com\r\n\r\nnanou.dn@gmail.com', 'http://www.formessentielle.fr', '2 - Diversification', NULL),
(21, 'Isle Jourdain Hockey Club - IJHC', 'Il semble que le hockey sur gazon soit le plus ancien jeu de balle avec crosse, et qu’il ait été joué pendant des siècles dans de nombreuses régions dans le monde avant de devenir le sport tel qu’il est aujourd’hui. ', '32600 L\'ISLE JOURDAIN', 'Flavien VIDAILLAC', '06 26 62 66 23', 'flaviohockey@hotmail.fr', 'http://www.ijhc.fr', '2 - Diversification', NULL),
(22, 'Tennis Club de Mauvezin', 'Club de tennis de Mauvezin', 'Route d\'Auch 32120 MAUVEZIN', 'Alain GIUSTI', '05 62 06 86 38', 'alaingiusti@neuf.fr', NULL, '1 - Lancement', NULL),
(23, 'Union Nationale du Sport Scolaire - UNSS', 'Créée en 1932 l’UNSS propose plus de 100 pratiques sportives à plus d’1 million de licenciés dont 42% de filles. Dans les 9500 associations sportives, 35 000 professeurs d’EPS encadrent pour permettre à la jeunesse du secondaire de vivre des moments uniques. A 20 euros en moyenne la licence, l’UNSS s’ouvre à tous et pour tous afin de sensibiliser aux valeurs du fair-play ainsi qu’à une sensibilisation sur les problèmes de santé et sur le handicap. A l’UNSS, partageons plus que du sport !', '7 bis, rue Gambetta 32000 AUCH', NULL, '05 67 76 51 99', 'unss32@gmail.com', NULL, '2 - Diversification', NULL),
(24, 'USP - Judo Club Plaisance', 'Environ 130 pratiquants. Dispose d’une excellente image, aussi bien auprès des enfants, grâce notamment à la médiatisation de ses champions, que des parents très sensibles aux valeurs éducatives véhiculées par ce sport.\r\nC’est une tradition de sérieux et de respect de l’autre; c’est l’apprentissage de la vie.\r\nL’activité est proposée à partir de 6 ans.\r\nLe niveau atteint en compétition est élevé, plusieurs judokas se sont déjà qualifiés pour les championnats de France.\r\nChaque année une compétition régionale rassemblant environ 700 participants est organisée par le club.', NULL, 'Laurence FOURGEAUD', NULL, NULL, NULL, '1 - Lancement', NULL);

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

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-10-16 10:59:44', NULL, NULL);

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
(1, 'Super Administrator', 1, 'skin-red', '2018-10-16 10:59:44', NULL);

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
(11, 1, 0, 1, 0, 1, 1, 11, '2018-10-16 10:59:44', NULL);

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
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-10-16 10:59:44', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-10-16 10:59:44', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2018-10-16 10:59:44', NULL, 'Application Setting', 'Google FCM Key');

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
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$6rwTIrnUSZhuskJ2Wmp1JuodO/Z8vkJLjGQ4j0tUyt8dAhsNvVyYq', 1, '2018-10-16 10:59:44', NULL, 'Active');

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
  `blob_img` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Structure de la table `propose`
--

CREATE TABLE `propose` (
  `id` int(11) NOT NULL,
  `id_Activite` int(11) NOT NULL
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
-- Index pour la table `Club`
--
ALTER TABLE `Club`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Club_Image_FK` (`id_Image`);

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
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Activite`
--
ALTER TABLE `Activite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `Image`
--
ALTER TABLE `Image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Club`
--
ALTER TABLE `Club`
  ADD CONSTRAINT `Club_Image_FK` FOREIGN KEY (`id_Image`) REFERENCES `Image` (`id`);

--
-- Contraintes pour la table `propose`
--
ALTER TABLE `propose`
  ADD CONSTRAINT `propose_Activite0_FK` FOREIGN KEY (`id_Activite`) REFERENCES `Activite` (`id`),
  ADD CONSTRAINT `propose_Club_FK` FOREIGN KEY (`id`) REFERENCES `Club` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
