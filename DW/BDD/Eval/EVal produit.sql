DROP DATABASE if EXISTS Eval;

CREATE DATABASE Eval;
USE Eval;

CREATE TABLE `client` (

cli_num INT NOT NULL PRIMARY KEY,
cli_nom VARCHAR (50) NOT NULL, 
cli_adresse VARCHAR (50),
ci_tel VARCHAR (50)
);

CREATE TABLE produit (

pro_num INT NOT NULL PRIMARY KEY,
pro_libelle VARCHAR (50),
pro_description VARCHAR (50)
);

CREATE TABLE commande (

com_num INT NOT NULL PRIMARY KEY,
cli_num INT NOT NULL,
com_date DATETIME,
com_obs VARCHAR (50),
FOREIGN KEY (cli_num) REFERENCES `client` (cli_num)
);

CREATE TABLE est_compose (

com_num INT NOT NULL,
pro_num INT NOT NULL,
est_qte INT NOT NULL,
PRIMARY KEY (com_num,pro_num),
FOREIGN KEY (com_num) REFERENCES commande (com_num),
FOREIGN KEY (pro_num) REFERENCES produit (pro_num)
);

CREATE INDEX index_name ON `client`(cli_nom);
SHOW INDEX from `client`  
