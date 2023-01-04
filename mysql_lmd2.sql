
create database poei;
use poei;

create table personne (
num int(3) primary key,
nom varchar(20),
prenom varchar(20),
salaire int(4),
ville varchar(20)
);

create table vehicule (
immatriculation int(3) primary key,
marque varchar(20),
modele varchar(20),
annee int(4),
nump int(3),
constraint fk_vehicule_personne foreign key (nump) references
personne(num)
);

insert into personne values
(1, 'Cohen', 'Sophie', 2000, 'Marseille'),
(2, 'Leberre', 'Bernard', 1500, 'Marseille'),
(3, 'Benamar', 'Pierre', 1800, 'Lyon'),
(4, 'Hadad', 'Karim', 2500, 'Paris'),
(5, 'Wick', 'John', 3000, 'Paris');

insert into vehicule values
(100, 'Peugeot', '5008', 2018, 5),
(200, 'Renault', 'clio', 2000, 4),
(300, 'Ford', 'fiesta', 2010, 1),
(400, 'Peugeot', '106', 2002, 3),
(500, 'Citroen', 'C4', 2015, 4),
(600, 'Ford', 'Kuga', 2019, null),
(700, 'Fiat', 'punto', 2008, 5);
