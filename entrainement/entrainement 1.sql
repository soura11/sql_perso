EXERCICE 1

SELECT *
FROM habitation
WHERE ville = 'Marseille';

exo 2

SELECT ville, COUNT((typeh)) as nombre_habitation
FROM habitation
GROUP BY ville
ORDER BY ville ASC;

exo 3

SELECT c.nom, COUNT((codeh)) as nombre_location
FROM client c, location l
WHERE c.nom = l.nom
GROUP BY c.nom
ORDER BY c.nom ASC;

exo 4 

SELECT c.nom, h.codeh, ville, typeh, profession
FROM client c, habitation h, location l
WHERE c.nom = l.nom
AND h.codeh = l.codeh
ORDER BY h.codeh ASC;

exo 5

SELECT h.codeh, typeh, ville, c.nom, profession
FROM habitation h
LEFT JOIN location l
ON h.codeh = l.codeh
LEFT JOIN client c
ON c.nom = l.nom ;

exo 6

SELECT ville, typeh, min(loyerM), max(loyerM),avg(loyerM)
FROM habitation
GROUP BY typeh, ville
ORDER by ville ASC;

exo 7

SELECT typeh, COUNT((l.codeh))AS nombres_location
FROM habitation h, location l
WHERE h.codeh = l.codeh
GROUP BY typeh
ORDER BY typeh ASC;

exo 8

SELECT typeh, COUNT((l.codeh))AS nombres_location
FROM habitation h, location l
WHERE h.codeh = l.codeh
GROUP BY typeh
HAVING nombres_location >= 4;
ORDER BY typeh ASC;

exo 9

SELECT typeh, h.codeh,IFNULL(sum(NombMois),0) AS "nombre_mois_total"
FROM habitation h
LEFT JOIN location l
ON h.codeh = l.codeh
GROUP BY h.codeh;

exo 10

SELECT l.nom, sum(NombMois * loyerM) AS "nombre_mois_total"
FROM habitation h
JOIN location l
ON h.codeh = l.codeh
GROUP BY l.nom
ORDER BY l.nom ASC;

exo 11

SELECT nom
FROM client
WHERE nom  NOT IN (
						SELECT nom
						FROM location ;)
						
SELECT nom
FROM client
EXCEPT
SELECT nom
FROM location;

exo 12

SELECT l.nom
FROM location l, habitation h
WHERE l.codeh = h.codeh
AND typeh = type1
UNION
SELECT l.nom
FROM location l, habitation h
WHERE l.codeh = h.codeh
AND typeh = type3;
















