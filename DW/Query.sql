CREATE DATABASE Concess;
USE concess;

CREATE TABLE vehicules (
id_vehicules INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
prix_ocas INT NOT NULL,
prix_neuf INT NOT NULL,
vehi_parti VARCHAR (250) NOT NULL,
vehi_uti VARCHAR (250) NOT NULL;
);

CREATE TABLE reparation(
id_reparation INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
prix_repara INT NOT NULL,
pprix_entret INT NOT NULL;
);

CREATE TABLE bonus (
id_bonus INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
prix_acess INT NOT NULL,






