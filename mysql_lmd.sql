
CREATE DATABASE cours_lmd;

USE cours_lmd;


CREATE TABLE personne (
num int primary key AUTO_INCREMENT,
nom varchar(30),
prenom varchar(30) unique not null,
salaire int,
ville varchar(30)
);

/*1er synthaxe pour affecter des valeurs */
INSERT INTO personne VALUES(1, "Wick", 'John', 1700, "Aix");


/* voir les données */
SELECT *FROM personne

INSERT INTO personne VALUES 
(2, "Travolta", 'Johnny', 170000, "Marseille"),
(3, "Dalton", 'Jack', 900, "Paris");

/* 2ème synthaxe pour affecter des valeurs */
INSERT INTO personne
SET
nom = "Messi",
prenom = 'Lionel';

INSERT INTO personne (nom, prenom, ville) VALUES("Wick", 'Jane',"Aix");

INSERT INTO personne VALUES (10, "Mitroglou", 'Kostas', 1700, "Aix");
INSERT INTO personne (nom, prenom, ville) VALUES ( "Valery", 'Germain', "Aix");
INSERT INTO personne VALUES (6, "Abdennour", 'Aymen', 1700, "Aix");

INSERT INTO personne (nom, prenom, ville) VALUES 
( "Ronaldo", 'Cristiano', "Aix"),
( "Denzel", 'Washington', "Aix");

UPDATE personne
SET
nom = "Overmars",
prenom = "Marc"
Where num= 10;

ALTER TABLE personne
AUTO_INCREMENT = 100;


/* Augmentation salaire d'une personne vivant à Paris */ 
UPDATE personne
SET
salaire = salaire +200
Where ville = "Paris"

/* Supprimer une donnée */
DELETE FROM personne
WHERE ville = "Paris";