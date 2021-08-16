DROP DATABASE if EXISTS vacance;

CREATE DATABASE vacance;

USE vacance;

CREATE TABLE station (

		num_station	INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	
		nom_station VARCHAR (50) NOT NULL
		);
	
	CREATE TABLE `client` ( 
	
		adresse_client VARCHAR (50) NOT NULL,
		nom_client VARCHAR (50) NOT NULL,
		prenom_client VARCHAR (50) NOT NULL,
		num_client INT NOT NULL PRIMARY KEY
		);
		
	CREATE TABLE hotel (
	
	capacite_hotel INT NOT NULL,
	categorie_hotel VARCHAR (50) NOT NULL,
	nom_hotel VARCHAR (50) NOT NULL,
	adresse_hotel VARCHAR (50) NOT NULL,
	num_hotel INT NOT NULL PRIMARY KEY,
	num_station INT NOT NULL,
	FOREIGN KEY (num_station) REFERENCES station(num_station)
	);
	
	
	CREATE TABLE chambre (
	
	capacite_chambre INT NOT NULL,
	degre_confort INT NOT NULL,
	exposition VARCHAR (50) NOT NULL,
	type_chambre VARCHAR (50) NOT NULL,
	num_chambre INT NOT NULL PRIMARY KEY,
	num_hotel INT NOT NULL,
	FOREIGN KEY (num_hotel) REFERENCES hotel(num_hotel)
	);
	
	
	CREATE TABLE reservation (
	num_chambre INT NOT NULL,
	num_client INT NOT NULL,
	date_debut DATE,
	date_fin DATE,
	date_reservation DATE,
	montant_arrhes INT NOT NULL,
	prix_total INT NOT NULL,
	 PRIMARY KEY (num_chambre,num_client),
    FOREIGN KEY (num_chambre) REFERENCES chambre (num_chambre),
    FOREIGN KEY (num_client) REFERENCES `client` (num_client)
);
	 
	
	