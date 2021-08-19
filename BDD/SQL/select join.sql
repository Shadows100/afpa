SELECT hot_nom, hot_ville 
FROM hotel.hotel;

SELECT cli_nom, cli_prenom, cli_adresse, cli_ville 
FROM client
WHERE cli_nom = 'White';

SELECT sta_nom, sta_altitude
FROM station
WHERE sta_altitude > 1000;

SELECT cha_numero, cha_capacite
FROM chambre
WHERE cha_capacite > 1;

SELECT cli_nom, cli_ville
FROM client 
WHERE cli_ville <> 'londre';

SELECT hot_nom, hot_ville, hot_categorie
FROM hotel.hotel
WHERE hot_ville = 'Bretou' AND hot_categorie > 3;

SELECT hot_nom, hot_categorie, hot_ville, cha_numero
FROM hotel.hotel
JOIN chambre 
ON cha_id = hot_id;

SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite
FROM hotel.hotel
JOIN chambre
ON cha_id = hot_id
WHERE hot_ville = 'Bretou' AND cha_capacite > 1;

SELECT cli_nom, hot_nom, res_date
FROM hotel.hotel
JOIN client 
ON cli_id = hot_id
JOIN reservation
ON res_id = cli_id;
