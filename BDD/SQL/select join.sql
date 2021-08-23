-- 1 - Afficher la liste des hôtels. Le résultat doit faire apparaître le nom de l’hôtel et la ville


SELECT hot_nom, hot_ville 
FROM hotel.hotel;

-- 2 - Afficher la ville de résidence de Mr White Le résultat doit faire apparaître le nom, le prénom, et l'adresse du client

SELECT cli_nom, cli_prenom, cli_adresse, cli_ville 
FROM client
WHERE cli_nom = 'White';

-- 3 - Afficher la liste des stations dont l’altitude < 1000 Le résultat doit faire apparaître le nom de la station et l'altitude

SELECT sta_nom, sta_altitude
FROM station
WHERE sta_altitude > 1000;

-- 4 - Afficher la liste des chambres ayant une capacité > 1 Le résultat doit faire apparaître le numéro de la chambre ainsi que la capacité

SELECT cha_numero, cha_capacite
FROM chambre
WHERE cha_capacite > 1;

-- 5 - Afficher les clients n’habitant pas à Londre Le résultat doit faire apparaître le nom du client et la ville

SELECT cli_nom, cli_ville
FROM client 
WHERE cli_ville <> 'londre';

-- 6 - Afficher la liste des hôtels située sur la ville de Bretou et possédant une catégorie > 3 Le résultat doit faire apparaître le nom de l'hôtel, ville et la catégorie

SELECT hot_nom, hot_ville, hot_categorie
FROM hotel.hotel
WHERE hot_ville = 'Bretou' AND hot_categorie > 3;

-- 7 - Afficher la liste des hôtels avec leur station Le résultat doit faire apparaître le nom de la station, le nom de l’hôtel, la catégorie, la ville


SELECT sta_nom, hot_nom, hot_categorie, hot_ville
FROM hotel.hotel
JOIN station
ON sta_id = hot_id;

-- 8 - Afficher la liste des chambres et leur hôtel Le résultat doit faire apparaître le nom de l’hôtel, la catégorie, la ville, le numéro de la chambre

SELECT hot_nom, hot_categorie, hot_ville, cha_numero
FROM hotel.hotel
JOIN chambre 
ON cha_id = hot_id;

-- 9 - Afficher la liste des chambres de plus d'une place dans des hôtels situés sur la ville de Bretou Le résultat doit faire apparaître le nom de l’hôtel, la catégorie,
--  la ville, le numéro de la chambre et sa capacité

SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite
FROM hotel.hotel
JOIN chambre
ON cha_id = hot_id
WHERE hot_ville = 'Bretou' AND cha_capacite > 1;

-- 10 - Afficher la liste des réservations avec le nom des clients Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de réservation

SELECT cli_nom, hot_nom, res_date
FROM hotel.hotel
JOIN client 
ON cli_id = hot_id
JOIN reservation
ON res_id = cli_id;

-- 12 - Afficher les réservations avec le nom du client et le nom de l’hôtel AVEC datediff Le résultat doit faire apparaître le nom du client,
--  le nom de l’hôtel, la date de début du séjour et la durée du séjour

USE hotel;

SELECT cli_nom, hot_nom, res_date_debut, DATEDIFF ( res_date_fin , res_date_debut )
FROM hotel.hotel
JOIN reservation
ON res_id = hot_id
JOIN client 
ON cli_id = hot_id;

-- 17 - Afficher la durée moyenne des réservations par station

USE hotel;

SELECT sta_nom, AVG(datediff(res_date_fin,res_date_debut)) AS res_date
FROM station 
JOIN reservation
ON res_id = sta_id
GROUP BY sta_nom;


