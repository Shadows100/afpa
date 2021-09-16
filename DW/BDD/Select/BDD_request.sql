USE exemple; 

/*exercice 1 affiche toutes les informations des employés*/
SELECT *
FROM employe;
/*exercice 2 affiche toutes les informations départements*/
SELECT *
FROM dept;
/*exercice 3 affiche le nom, la date d'embauche, le numéro du supérieur, le 
numéro de département et le salaire de tous les employés*/
SELECT nom, dateemb, nosup, nodep, salaire
FROM employe;
/*exercice 4 affiche le titre de tous les employés*/
SELECT titre
FROM employe;
/*exercice 5 affiche les differentes valeurs des titres des employés*/
SELECT titre
FROM employe
GROUP BY titre;
/*exercice 6 affiche le nom, le numéro d'employé et le numéro du 
 département des employés dont le titre est « Secrétaire*/
SELECT nom, noemp, nodep, titre
FROM employe
WHERE titre='secrétaire';
/*exercice 7 affiche le nom et le numéro de departement dont le numero de département est supérieur a 40*/
SELECT nom, nodep FROM employe WHERE nodep>='40' ORDER BY nodep;
/*exercice 8  Afficher le nom et le prénom des employés dont le nom est 
alphabétiquement antérieur au prénom*/
SELECT nom, prenom FROM employe WHERE nom<=prenom ORDER BY nom;
/*exercice 9 Afficher le nom, le salaire et le numéro du département des employés 
dont le titre est « Représentant », le numéro de département est 35 et 
le salaire est supérieur à 20000*/
SELECT nom, salaire, nodep FROM employe WHERE nodep=35 AND salaire>'20000' AND titre='représentant';
/*exercice 10 Afficher le nom, le titre et le salaire des employés dont le titre est 
« Représentant » ou dont le titre est « Président » */
SELECT nom, titre, salaire FROM employe WHERE titre='représentant' OR titre='président';
/* exercice 11 Afficher le nom, le titre, le numéro de département, le salaire des 
employés du département 34, dont le titre est « Représentant » ou 
« Secrétaire »*/
SELECT nom, titre, nodep, salaire FROM employe WHERE nodep=34 AND titre='représentant' OR titre='secrétaire';
/*exercice 12 Afficher le nom, le titre, le numéro de département, le salaire des 
employés dont le titre est Représentant, ou dont le titre est Secrétaire 
dans le département numéro 34 */ 
SELECT nom, titre, nodep, salaire FROM employe WHERE titre='représentant' OR titre='secrétaire' AND nodep='34';
/*exercice 13 Afficher le nom, et le salaire des employés dont le salaire est compris 
entre 20000 et 30000.*/
SELECT nom, salaire FROM employe WHERE salaire>='20000' AND salaire<='30000' ORDER BY salaire;
/*exercice 14 Afficher le nom des employés commençant par la lettre « H » Afficher le nom des employés se terminant par la lettre « n ». */
SELECT nom FROM employe WHERE nom LIKE 'H%' OR nom LIKE '%N';
/* exercice 17 afficher le nom des employés contenant la lettre « u » en 3ème 
position.  */
SELECT nom FROM employe WHERE nom LIKE '__u%';
/*exercice 18  Afficher le salaire et le nom des employés du service 41 classés par 
salaire croissant*/
SELECT salaire, nom, nodep FROM employe WHERE nodep='41' ORDER BY salaire;
/*exercice 19 Afficher le salaire et le nom des employés du service 41 classés par 
salaire décroissant*/
SELECT salaire, nom, nodep FROM employe WHERE nodep='41' ORDER BY salaire DESC;
/*exercice 20 Afficher le titre, le salaire et le nom des employés classés par titre 
croissant et par salaire décroissant.*/
SELECT titre, salaire, nom FROM employe ORDER BY salaire DESC, titre ASC;
/*exercice 21 Afficher le taux de commission, le salaire et le nom des employés 
classés par taux de commission croissante*/
SELECT tauxcom, salaire, nom FROM employe ORDER BY tauxcom;
/*exercice 22 Afficher le nom, le salaire, le taux de commission et le titre des 
employés dont le taux de commission n'est pas renseigné*/
SELECT nom, salaire, tauxcom, titre FROM employe WHERE tauxcom IS NULL;
/*exercice 23 Afficher le nom, le salaire, le taux de commission et le titre des 
employés dont le taux de commission est renseigné et Afficher le nom, le salaire, le taux de commission, le titre des 
employés dont le taux de commission est inférieur à 15*/
SELECT nom, salaire, tauxcom, titre FROM employe WHERE tauxcom IS NOT NULL;
SELECT nom, salaire, tauxcom, titre FROM employe WHERE tauxcom<'15';
/*exercice 25 Afficher le nom, le salaire, le taux de commission, le titre des 
employés dont le taux de commission est supérieur à 15. */
SELECT nom, salaire, tauxcom, titre FROM employe WHERE tauxcom>'15';
/*exercice 26  Afficher le nom, le salaire, le taux de commission et la commission des 
employés dont le taux de commission n'est pas nul. (la commission 
est calculée en multipliant le salaire par le taux de commission) */
SELECT nom, salaire*tauxcom AS 'commission' FROM employe WHERE tauxcom IS NOT NULL;
/*exercice 27 Afficher le nom, le salaire, le taux de commission, la commission des 
employés dont le taux de commission n'est pas nul, classé par taux de 
commission croissant.*/
SELECT nom, salaire*tauxcom AS 'com' FROM employe WHERE tauxcom IS NOT NULL ORDER BY tauxcom ASC;
/*exercice 28 Afficher le nom et le prénom (concaténés) des employés. Renommer 
les colonnes*/
SELECT CONCAT(nom, ' ', prenom) AS 'nom_et_prenom' FROM employe;
/*exercice 29 Afficher les 5 premières lettres du nom des employés. */
SELECT SUBSTR(nom, 1, 5) FROM employe;
/*exercice 30 Afficher le nom et le rang de la lettre « r  » dans le nom des 
employés.  */
SELECT nom, INSTR(nom, 'r') FROM employe;
/*exercice 31 Afficher le nom, le nom en majuscule et le nom en minuscule de 
l'employé dont le nom est Vrante.   */
SELECT nom, LOWER('Vrante'), UPPER('Vrante') FROM employe WHERE nom='Vrante';
/*exercice 32  Afficher le nom et le nombre de caractères du nom des employés. */
SELECT nom, LENGTH(nom) FROM employe;