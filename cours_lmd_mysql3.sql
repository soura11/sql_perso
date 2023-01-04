
/* Selectionner */
SELECT*
FROM personne;

/* selectionner deux colonnes */
SELECT nom,prenom
FROM personne;

/* Selectionner deux colonnes avec nombre de ligne */
SELECT *
FROM personne
LIMIT 2;

/* Selectionner deux colonnes mais après les deux premiers */
SELECT *
FROM personne
LIMIT 2
OFFSET 2;

SELECT *
FROM personne
LIMIT 2, 2;

/* selectionner que les villes */
SELECT ville
FROM personne;

/* si on veut pas de doublon pour les villes */
SELECT distinct(ville)
FROM personne;

/* si on veut savoir le nombre de villes */
SELECT count(distinct(ville)) as "Nombre de villes"
FROM personne;


SELECT *
FROM personne
Where ville = 'Marseille';

/* 1er suggestion */
SELECT *
FROM personne
WHERE ville = 'Marseille' OR ville = 'Lyon';

/* 2ème suggestion */
SELECT *
FROM personne
WHERE ville in ('Marseille','Lyon');

/* salaire avec un interval */
SELECT *
FROM personne
WHERE salaire >= 2000 AND salaire <= 3000;

SELECT *
FROM personne
WHERE salaire BETWEEN 2000 AND 3000;


/* VILLE + SALAIRE INTERVAL */
SELECT *
FROM personne
WHERE (ville= "Marseille")
AND (salaire < 2000 OR salaire > 2500);

SELECT *
FROM personne
WHERE (ville= "Marseille")
AND salaire NOT BETWEEN 2000 AND 2500;

SELECT *
FROM personne
WHERE ville NOT in ("Marseille", "Paris");

SELECT *
FROM personne
WHERE ville <> "Marseille" AND ville != "Paris";

/* ville qui contient la lettre a */
SELECT *
FROM personne
WHERE ville LIKE "%a%";

/* qui commence par P */
SELECT *
FROM personne
WHERE ville LIKE "P%";

/* ville qui se termine par e */
SELECT *
FROM personne
WHERE ville LIKE "%e";

/* ville qui se termine par i au quatrième caractère*/
SELECT *
FROM personne
WHERE ville LIKE "___i%";

/* personne qui ne vit pas dans une ville contenant la lettre i */SELE
SELECT *
FROM personne
WHERE ville NOT LIKE "%i%";

/* liste de personne ayant un vehicule */ 
SELECT *
FROM vehicule
WHERE nump is not NULL;

/* remplacer non nulle par sans proprio*/
SELECT marque, IFNULL(nump, "Pas de propriétaire") AS "Propriétaire"
FROM vehicule;

/* ordonner les nombres en croissant*/
SELECT *
FROM vehicule
ORDER BY nump;

/* ordonner les nombres en decroissant*/
SELECT *
FROM vehicule
ORDER BY nump DESC;

/* Afficher marque asc croissant, modele decroissant */
SELECT *
FROM vehicule
ORDER by marque ASC, modele DESC;

 /* Regrouper par cb de proprio*/
SELECT nump, count(*)
FROM VEHICULE
WHERE nump is not NULL
GROUP BY nump;

/* CB de fois la marque apparait*/
SELECT marque, count(*) as "nombre"
FROM VEHICULE
GROUP BY marque;

/* condition a rajouter sur le regroupement/ Having */
SELECT marque, count(*) as "nombre"
FROM vehicule
GROUP BY marque
HAVING nombre  = 1 ;

/* condition somme des salaires */
SELECT sum(salaire)
From personne;

/* moyenne des salaire par ville */
SELECT  ville, avg(salaire) as "moyenne salaire"
FROM personne
GROUP BY ville;

/* moyenne des salaire par ville, le max et le min */
SELECT ville, avg(salaire) as "moyenne salaire", max(salaire), min(salaire)
FROM personne
GROUP BY ville;

/* numéro des personnes ayant un vehicule citroen ou renault */
SELECT nump,marque
FROM vehicule
Where marque in ("Citroen" ,"Renault");

SELECT nump
FROM vehicule
Where marque= "Renault"
UNION
SELECT nump
FROM vehicule
Where marque= "Citroen";

/* personne qui a fiat et peugeot 1ER METHODE*/
SELECT nump
FROM vehicule
Where marque = "Fiat"
INTERSECT
SELECT nump
FROM vehicule
Where marque = "peugeot";

/* personne qui a fiat et peugeot 2EME METHODE (REQUETE IMBRIQUER avec in)*/
SELECT nump
FROM vehicule
WHERE marque = "Fiat"
AND nump in (
    SELECT nump 
    FROM vehicule
    WHERE marque = "Peugeot"
);
/* personne qui a fiat et peugeot 2EME METHODE (REQUETE IMBRIQUER avec any)*/
SELECT nump
FROM vehicule
WHERE marque = "Fiat"
AND nump = ANY (
    SELECT nump 
    FROM vehicule
    WHERE marque = "Peugeot"
);

/*numéro personne vehicule = peugeot mais pas marque fiat */

SELECT nump
FROM vehicule
WHERE marque = "Peugeot"
EXCEPT
SELECT nump
FROM vehicule
WHERE marque = "Fiat";

/* jointure entre deux tableau */
/* 1er methode */
SELECT marque, modele, nom, prenom
FROM personne, vehicule
WHERE num = nump;
/* 2ème methode */
SELECT marque, modele, nom, prenom
FROM personne p, vehicule v
WHERE p.num = v.nump;
/* 3ème methode */
SELECT marque, modele, nom, prenom
FROM personne as p, vehicule as v
WHERE p.num = v.nump;
/* 4ème methode */
SELECT marque, modele, nom, prenom
FROM personne, vehicule
WHERE personne.num = vehicule.nump;

/* marque des voitures qui roulent à MARSEILLE */
SELECT marque, ville
FROM personne p, vehicule v
WHERE p.num = v.nump
AND ville = "Marseille";

/* JOINTURE EXPLICITE */
SELECT marque, modele, nom, prenom
FROM personne
JOIN vehicule
ON nump = num;


/* JOINTURE IMPLICITE */

SELECT marque, modele, nom, prenom
FROM personne
LEFT JOIN vehicule
ON num = nump;

SELECT marque, modele, nom, prenom
FROM personne 
RIGHT JOIN vehicule
ON num = nump;

/* PAS DE NON NULL */
SELECT marque, modele, IFNULL(nom, "") AS nom, IFNULL(prenom, "") AS prenom
FROM personne 
RIGHT JOIN vehicule
ON num = nump;

/* marques voiture appartenant des personnes ayant deux vehicules et la ville paris */
SELECT nump, marque
FROM vehicule v, personne p
WHERE p.num = v.nump
AND ville = "Paris"
AND nump in (
			SELECT nump
			FROM vehicule
			GROUP BY nump
			HAVING COUNT(*) = 2
);

/* afficher les villes où il y a deux personnes qui habitent */
SELECT ville
FROM personne
GROUP BY ville
HAVING COUNT(*) = 2;

SELECT ville
FROM personne
WHERE ville IN (
			SELECT ville
			FROM personne
			GROUP BY ville
			HAVING COUNT(*) = 2
);