
exo 1


SELECT c.nom, h.codeh, ville, typeh, profession
FROM habitation h, client c, location l
WHERE h.codeh = l.codeh
AND c.nom = l.nom
ORDER BY h.codeh ASC;

exo 2

SELECT c.nom, h.codeh, ville, typeh, profession
FROM habitation h
lEFT JOIN location l
ON h.codeh = l.codeh
LEFT JOIN client c
ON c.nom = l.nom;

exo 3 moyenne 


SELECT ville, typeh, min(LoyerM), max(LoyerM), avg(LoyerM)
FROM habitation
GROUP BY ville, typeh
ORDER BY ville ASC;

exo 4

SELECT typeh, count(*) as "nombre_location"
FROM habitation h
JOIN location l
ON h.codeh = l.codeh
GROUP BY typeh
ORDER BY typeh ASC;

exo 5

SELECT typeh, count(*) as "nombre_location"
FROM habitation h
JOIN location l
ON h.codeh = l.codeh
GROUP BY typeh
HAVING nombre_location >= 4;

exo 6 

SELECT typeh, h.codeh,IFNULL(sum(NombMois),0) as "nombre_mois_total" 
FROM habitation h
LEFT JOIN location l
ON h.codeh = l.codeh
GROUP BY h.codeh;

exo 7

SELECT nom, sum(LoyerM * NombMois) as "total"
FROM habitation h
JOIN location l
ON h.codeh = l.codeh
GROUP BY nom
ORDER BY nom ASC;

exo 8

SELECT nom
FROM client
WHERE nom not in (
                  Select nom
				  FROM location
);
 ou
 
SELECT nom
FROM client
EXCEPT
SELECT nom
FROM location;

exo 9
 faux revoir 
SELECT l.nom
FROM habitation, location l
WHERE l.codeh = h.codeh
AND typeh = "Type1"
AND l.nom = ANY (
       SELECT l.nom
       FROM habitation h, location l
        WHERE typeh = "Type3"
);
correction
SELECT l.nom
From location l, habitation h
Where l.Codeh = h.Codeh
And h.Typeh = "Type1"
And l.nom in 
(SELECT l.nom
From location l, habitation h
Where l.Codeh = h.Codeh
And h.Typeh = "Type3")
order by nom;

SELECT l.nom
From location l, habitation h
Where l.Codeh = h.Codeh
And h.Typeh = "Type1"
INTERSECT
SELECT l.nom
From location l, habitation h
Where l.Codeh = h.Codeh
And h.Typeh = "Type3"


exo 10

SELECT nom
FROM habitation h, location l
WHERE l.Codeh = h.Codeh
AND h.Typeh= "Villa"
EXCEPT
SELECT nom
FROM habitation h, location l
WHERE l.Codeh = h.Codeh
AND h.Typeh != "Villa";



exo 11

correction

SELECT l.nom, sum(LoyerM*NombMois) as total
FROM location l, habitation h
WHERE l.Codeh = h.Codeh
group by l.nom
having total >= all (
SELECT  sum(LoyerM*NombMois) as total
FROM location l, habitation h
WHERE l.Codeh = h.Codeh
group by l.nom);


