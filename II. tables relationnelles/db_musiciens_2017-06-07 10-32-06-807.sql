# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: db_musiciens
# Generation Time: 2017-06-07 08:24:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table musiciens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `musiciens`;

CREATE TABLE `musiciens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL DEFAULT '',
  `prenom` varchar(50) NOT NULL DEFAULT '',
  `instrument` varchar(25) NOT NULL DEFAULT '',
  `style` varchar(25) NOT NULL DEFAULT '',
  `pays` varchar(25) NOT NULL DEFAULT '',
  `naissance` date NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `musiciens` WRITE;
/*!40000 ALTER TABLE `musiciens` DISABLE KEYS */;

INSERT INTO `musiciens` (`id`, `nom`, `prenom`, `instrument`, `style`, `pays`, `naissance`, `detail`)
VALUES
	(1,'Clapton','Eric','Guitare','Blues','Angleterre','1945-03-30','A remplir'),
	(2,'Hendrix','Jimi','Guitare','Rock','US','1945-04-12','A remplir'),
	(3,'Shankar','Ravi','Sitar','World','Inde','1920-04-07','A remplir'),
	(4,'Reinhardt','Django','Guitare','Jazz','Belge','1910-01-23','A remplir'),
	(5,'Marley','Bob','Guitare','Reggae','Jamaique','1945-02-06','A remplir');

/*!40000 ALTER TABLE `musiciens` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
