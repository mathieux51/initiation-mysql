SHOW DATABASES;
USE db_musiciens;
SHOW TABLES;
DESCRIBE musiciens;
SELECT * FROM `musiciens` ;
SELECT * FROM musiciens ORDER BY nom DESC
SELECT prenom, nom FROM `musiciens`;
SELECT * FROM musiciens WHERE pays='US';
SELECT DISTINCT `instrument` FROM `musiciens`;
SELECT * FROM `musiciens` WHERE style='Blues' OR pays='Belge'
SELECT nom, prenom, DATE_FORMAT(naissance, "%d/%m/%Y") AS DATE FROM `musiciens`;

SELECT 
	DAY(naissance) AS jour, 
	MONTH(naissance) AS mois,
	YEAR(naissance) AS annee
FROM `musiciens`; 
SELECT COUNT(*) FROM `musiciens`
SELECT pays, COUNT(pays) AS nombre FROM `musiciens` GROUP BY pays;
 SELECT pays FROM 
	(SELECT pays, COUNT(pays) AS nombre FROM `musiciens` GROUP BY pays ) AS pays_min WHERE nombre=1; 

 SELECT * FROM musiciens WHERE pays 
	IN
	(SELECT pays FROM 
	(SELECT pays, COUNT(pays) AS nombre FROM `musiciens` GROUP BY pays)
	 AS pays_min WHERE nombre=1) 

INSERT INTO `musiciens` (id, nom, prenom, instrument, style, pays, naissance, detail) VALUES(NULL, 'Gaudry', 'Michel', 'Contrebasse', 'classique', 'France', '1928-09-23', 'A remplir') 
UPDATE `musiciens` SET style='Jazz' WHERE nom='Gaudry';
DELETE FROM `musiciens` WHERE id = 6